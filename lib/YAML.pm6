unit module YAML;

use YAML::Type::Str;
use YAML::Type::Map;
use YAML::Type::Seq;

sub parse-yaml(Str $yaml) is export {
  my @docs;

  

  $yaml.perl.say;
  die 'dead';
}
