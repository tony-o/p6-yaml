use Test;

my @types = qw<Map Seq Str>;
my @names = qw<map seq str>;

plan @types.elems * 2;

my ($step, $typestr);
for 0..@types.end -> $x {
  $typestr = "YAML::Type::{@types[$x]}";
  $step    = 1;
  try {
    require ::($typestr);

    ok True, 
       "can `use $typestr`";

    $step--;
    ok ::("$typestr").new.name eq @names[$x], 
       "$typestr.name eq '{@names[$x]}'";
    CATCH {
      default {
        warn $_;
        ok False, "can `use $typestr`" 
          if $step >= 1;
        ok False, "$typestr.name eq '{@names[$x]}'"
          if $step >= 0;
      }
    }
  }
}
