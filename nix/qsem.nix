{
  "0.1.0.0" = {
    sha256 = "30f547ea33308b90fa32997744f1e2e7b3f74f23fffe5bffa32e3b90a5102cf9";
    revisions = {
      r0 = {
        nix = import ../hackage/qsem-0.1.0.0-r0-c9aa930c3f90936f88addace65d4d114d0730a1e72a7307d9146a355e0564673.nix;
        revNum = 0;
        sha256 = "c9aa930c3f90936f88addace65d4d114d0730a1e72a7307d9146a355e0564673";
      };
      r1 = {
        nix = import ../hackage/qsem-0.1.0.0-r1-e1be8ac043cd78927ae9e0c1562b02a1194fa965a1ab0c8161116ed420b1b28d.nix;
        revNum = 1;
        sha256 = "e1be8ac043cd78927ae9e0c1562b02a1194fa965a1ab0c8161116ed420b1b28d";
      };
      default = "r1";
    };
  };
}