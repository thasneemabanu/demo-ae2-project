package lk.abcd.demoae2project.service;

import lk.abcd.demoae2project.model.Package;
import lk.abcd.demoae2project.repository.PackageRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PackageService {
    @Autowired
    private PackageRepository packagerepositoryobject;

    public List<Package> findAll(){
        return packagerepositoryobject.findAll();
    }

    public Optional<Package> findById(int id){
        return packagerepositoryobject.findById(id);
    }

    public Package savePackage(Package packageobject){
        return packagerepositoryobject.save(packageobject);
    }
    public Package updatepackage(int id, Package packag) {
        Package updatepackage = packagerepositoryobject.findById(id).orElse(null);
        if (updatepackage != null){
            updatepackage.setPack(packag.getPack());
            updatepackage.setEmail(packag.getEmail());
            updatepackage.setCountry(packag.getCountry());
            packagerepositoryobject.save(updatepackage);
        }
        return updatepackage;

    }
    public void deleteById(int id){
        packagerepositoryobject.deleteById(id);
    }

}

