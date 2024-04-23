{
  "0.0.1" = {
    sha256 = "a7c9672126bf173287bc186ed9e70ca2d653ebe6166c84fa3b70f79823d22a7f";
    revisions = {
      r0 = {
        nix = import ../hackage/libinfluxdb-0.0.1-r0-0a93d6de0e543b10940a3905a74e726c881695de6cc150bc803b518188027396.nix;
        revNum = 0;
        sha256 = "0a93d6de0e543b10940a3905a74e726c881695de6cc150bc803b518188027396";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "bcb8304cdcb954c6e804da77297efa3f94549f16de2a9a05db000d5d09e658c3";
    revisions = {
      r0 = {
        nix = import ../hackage/libinfluxdb-0.0.2-r0-ee2149352b969106eff01fdf568fd521600afb406364f5b3d75802f987a26071.nix;
        revNum = 0;
        sha256 = "ee2149352b969106eff01fdf568fd521600afb406364f5b3d75802f987a26071";
      };
      default = "r0";
    };
  };
  "0.0.3" = {
    sha256 = "ef915c368e9e7f3cc4fc0386f266d90b39e960ae4f82462c8a7883ea24ee759c";
    revisions = {
      r0 = {
        nix = import ../hackage/libinfluxdb-0.0.3-r0-743137138eb22d36ae2f1be4fb9d78ee9dced416374c9192ba0f6b954bd39ac9.nix;
        revNum = 0;
        sha256 = "743137138eb22d36ae2f1be4fb9d78ee9dced416374c9192ba0f6b954bd39ac9";
      };
      default = "r0";
    };
  };
  "0.0.4" = {
    sha256 = "25b5bbc274c9e18bc46ea0271805adfcaaec6d46caa69eb465e0cbc03f63ef3f";
    revisions = {
      r0 = {
        nix = import ../hackage/libinfluxdb-0.0.4-r0-2e0a96300800e173c390a2022edbf991b173fc0d4f6bb7162c4f01629930c2c5.nix;
        revNum = 0;
        sha256 = "2e0a96300800e173c390a2022edbf991b173fc0d4f6bb7162c4f01629930c2c5";
      };
      r1 = {
        nix = import ../hackage/libinfluxdb-0.0.4-r1-5b640be6f1bfbd4398c8fc880ad479f104f5effe287e90ef81ea410228a6ad9d.nix;
        revNum = 1;
        sha256 = "5b640be6f1bfbd4398c8fc880ad479f104f5effe287e90ef81ea410228a6ad9d";
      };
      default = "r1";
    };
  };
}