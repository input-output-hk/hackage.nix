{
  "0.0.0" = {
    sha256 = "9a770cd7e9107ee9f60d9ab1a2ac6c874782f4626330de0c41895b8a2621f701";
    revisions = {
      r0 = {
        nix = import ../hackage/hspec-test-framework-0.0.0-r0-c90877ff085f809cbcaa23fa9bd0ad3a2d892449d2245d996b041616935890c8.nix;
        revNum = 0;
        sha256 = "c90877ff085f809cbcaa23fa9bd0ad3a2d892449d2245d996b041616935890c8";
        };
      r1 = {
        nix = import ../hackage/hspec-test-framework-0.0.0-r1-39f02dc030ce732b8d97657f3574a818352c6fbf5201b7bc0b7fced0e9ec4a24.nix;
        revNum = 1;
        sha256 = "39f02dc030ce732b8d97657f3574a818352c6fbf5201b7bc0b7fced0e9ec4a24";
        };
      default = "r1";
      };
    };
  "0.1.0" = {
    sha256 = "bbd1425564db0ef61379e3501782ca9e8eba2b347c7f980c9152ade889f5348f";
    revisions = {
      r0 = {
        nix = import ../hackage/hspec-test-framework-0.1.0-r0-463e5d01c7eed0e2ba98c1cdd8a63b8b2c025d677aff41fc928cc37350d2ae4d.nix;
        revNum = 0;
        sha256 = "463e5d01c7eed0e2ba98c1cdd8a63b8b2c025d677aff41fc928cc37350d2ae4d";
        };
      default = "r0";
      };
    };
  }