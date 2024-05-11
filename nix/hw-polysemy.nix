{
  "0.1.0.0" = {
    sha256 = "bb824eb34408ac4deaa7f8ee489b063756f1241b96df681ea0a2f46fb5473adf";
    revisions = {
      r0 = {
        nix = import ../hackage/hw-polysemy-0.1.0.0-r0-96a8d9d343e2a0963ab0812640bcebcaa441b27a85e4b4749a157b629b35f76e.nix;
        revNum = 0;
        sha256 = "96a8d9d343e2a0963ab0812640bcebcaa441b27a85e4b4749a157b629b35f76e";
      };
      r1 = {
        nix = import ../hackage/hw-polysemy-0.1.0.0-r1-bc2bd0abbf73e326dab0cb5f946788f35af4ed6ed29af08bf772e35a3f086889.nix;
        revNum = 1;
        sha256 = "bc2bd0abbf73e326dab0cb5f946788f35af4ed6ed29af08bf772e35a3f086889";
      };
      default = "r1";
    };
  };
}