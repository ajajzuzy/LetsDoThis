package pl.coderslab.converter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.convert.converter.Converter;
import pl.coderslab.enity.City;
import pl.coderslab.repository.CityRepository;

public class CityConverter implements Converter<String,City> {
    @Autowired
    private CityRepository cityRepository;
    @Override
    public City convert(String source) {
        City city = cityRepository.findOne(Long.valueOf(source));
        return  city;
    }
}
