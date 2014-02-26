Base Conversion
===============

For converting decimal to any base given the range of values.

## Example: Convert to and from Base 26

```ruby
alpha_converter = BaseConversion.new(26, BaseRange::BASE_26)
alpha_converter.convert_to_string(1208)    # "BUM"
alpha_converter.convert_to_number("BUM")   # 1208
```

Any conversion range can be provided but a few are included in the BaseRange module (BASE_2, BASE_16, BASE_26, and BASE_62). 
