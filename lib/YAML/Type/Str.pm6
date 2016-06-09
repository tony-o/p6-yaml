use YAML::Node::Type;

class YAML::Type::Str {

  method Str  returns Str { };

  method name returns Str {
    'str';
  }

  method parse(Str $data) {
    $data.say;      
  }
}
