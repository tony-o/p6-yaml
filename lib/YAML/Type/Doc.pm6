use YAML::Node::Type;

class YAML::Type::Doc {
  method Str  returns Str { };
  method name returns Str {
    'doc';
  }
}
