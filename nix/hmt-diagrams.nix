{
  "0.14" = {
    sha256 = "dc90db784e5a53f23ddc3b9d2591e93bae9d3cd14402b86581a90e2aa0a19f22";
    revisions = {
      r0 = {
        nix = import ../hackage/hmt-diagrams-0.14-r0-db55f691ebcb9363cd0b600c5dabe9ae828d0a149792910d794b3074f601ead4.nix;
        revNum = 0;
        sha256 = "db55f691ebcb9363cd0b600c5dabe9ae828d0a149792910d794b3074f601ead4";
      };
      default = "r0";
    };
  };
  "0.15" = {
    sha256 = "95be338168d2b2e92c2bfc09977e3b5c78213410f6ab1de3043d8cbfc258c4bc";
    revisions = {
      r0 = {
        nix = import ../hackage/hmt-diagrams-0.15-r0-27c89d12722f760666e6d1dcd5820c023d5afecafa2388bfe849c4883e665990.nix;
        revNum = 0;
        sha256 = "27c89d12722f760666e6d1dcd5820c023d5afecafa2388bfe849c4883e665990";
      };
      default = "r0";
    };
  };
}