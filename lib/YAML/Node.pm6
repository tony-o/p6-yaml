class YAML::Node {
  has YAML::Node::Type $.key;
  has YAML::Node::Type $.value;

  method Str {
    "{$.key.Str}: {$.value.Str}";
  }
};
