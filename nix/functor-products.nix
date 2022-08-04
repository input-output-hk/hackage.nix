{
  "0.1.0.0" = {
    sha256 = "b76bbb8814f47a35c58b027486b87d338462eb37d7a5f818dcde290215d6dda3";
    revisions = {
      r0 = {
        nix = import ../hackage/functor-products-0.1.0.0-r0-cc5e526b5f3694d33a89044578e4fe74e4e05dd01d5d96bc57be06d6d98a1883.nix;
        revNum = 0;
        sha256 = "cc5e526b5f3694d33a89044578e4fe74e4e05dd01d5d96bc57be06d6d98a1883";
        };
      r1 = {
        nix = import ../hackage/functor-products-0.1.0.0-r1-2db6766ea39c96af679b60e951d6704fa900ecf92517406d561b799f0243b89f.nix;
        revNum = 1;
        sha256 = "2db6766ea39c96af679b60e951d6704fa900ecf92517406d561b799f0243b89f";
        };
      default = "r1";
      };
    };
  "0.1.1.0" = {
    sha256 = "5b96928b6d690ec184e5f535f0804713b05fcb191aef04add368d4d38e5e3e8b";
    revisions = {
      r0 = {
        nix = import ../hackage/functor-products-0.1.1.0-r0-2bea36b6106b5756be6b81b3a5bfe7b41db1cf45fb63c19a1f04b572ba90fd0c.nix;
        revNum = 0;
        sha256 = "2bea36b6106b5756be6b81b3a5bfe7b41db1cf45fb63c19a1f04b572ba90fd0c";
        };
      default = "r0";
      };
    };
  }