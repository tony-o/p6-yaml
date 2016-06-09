use YAML::Node::Type;

class YAML::Type::Map {
  method Str  returns Str { '' };
  method name returns Str {
    return 'map';
  }
}
