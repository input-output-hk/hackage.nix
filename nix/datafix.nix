{
  "0.0.0.1" = {
    sha256 = "7843f5982aa4884a5d7099bd03bd1c5d1c40e4d2d1034330e71522b61ac7b75d";
    revisions = {
      r0 = {
        nix = import ../hackage/datafix-0.0.0.1-r0-6f62420503d22dc6ab5116488470ade8395a8cc285128c3a99bbfe25d2f809f9.nix;
        revNum = 0;
        sha256 = "6f62420503d22dc6ab5116488470ade8395a8cc285128c3a99bbfe25d2f809f9";
      };
      default = "r0";
    };
  };
  "0.0.0.2" = {
    sha256 = "d182bb17bf44002de3c5d3a50108f79026235c4dd5bb44f39fb60dca02aa237c";
    revisions = {
      r0 = {
        nix = import ../hackage/datafix-0.0.0.2-r0-856552f13a9492bc45e8b3edebc7bdbffa97ff82f226da7de9e5cc7e160dedc4.nix;
        revNum = 0;
        sha256 = "856552f13a9492bc45e8b3edebc7bdbffa97ff82f226da7de9e5cc7e160dedc4";
      };
      default = "r0";
    };
  };
  "0.0.1.0" = {
    sha256 = "f18b8e961e4ec8e70b4542c63d2ad72350e82a595a888997acf0a18633a7e3e6";
    revisions = {
      r0 = {
        nix = import ../hackage/datafix-0.0.1.0-r0-dabdbe3cd89dbf18f3e82ef02cb7ea973bf523dec8dc3a2704c46c46bb0a20d1.nix;
        revNum = 0;
        sha256 = "dabdbe3cd89dbf18f3e82ef02cb7ea973bf523dec8dc3a2704c46c46bb0a20d1";
      };
      r1 = {
        nix = import ../hackage/datafix-0.0.1.0-r1-d658337cc7cd229972a71161ceaaeb4bf03586bd1f2cf1791155495ab39da03f.nix;
        revNum = 1;
        sha256 = "d658337cc7cd229972a71161ceaaeb4bf03586bd1f2cf1791155495ab39da03f";
      };
      default = "r1";
    };
  };
}