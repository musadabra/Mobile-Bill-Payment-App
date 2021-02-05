package ng.billpayments.service;

import ng.billpayments.message.request.VendorForm;
import ng.billpayments.model.Vendor;
import ng.billpayments.repository.VendorRepositoty;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class VendorService {
    @Autowired
    VendorRepositoty vendorRepository;

    public String createVendor(VendorForm vendor){
        if(vendorRepository.existsByCompany(vendor.getCompany())){
            return "Failed to add, vendor with this name already exist";
        }

        if(vendorRepository.existsByEmail(vendor.getEmail())){
            return "Failed to add, vendor this email already exist";
        }

        Vendor vendorData = new Vendor(vendor.getCompany(), vendor.getEmail());

        vendorRepository.save(vendorData);
        return "Vendor Added!";
    }

    public List<Vendor> getVendors() {
        List<Vendor> vendor = new ArrayList<>();
        vendorRepository.findAll()
                .forEach(vendor::add);
        return vendor;
    }
}
