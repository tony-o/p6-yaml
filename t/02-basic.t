use Test;
use YAML;

my %x = parse-yaml(q:to{END});
---
key1: test
key2: "test"
key3: 123
key4: 124.0
END

%x.perl.say;
