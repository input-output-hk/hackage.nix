{
  "0.5" = {
    sha256 = "543637426206fedde5c0ae90e2d94589b9d196bcbfb0303cecd2eef64dd55f75";
    revisions = {
      r0 = {
        nix = import ../hackage/fit-0.5-r0-318416a90863b3d6b1b1bdd401e35740a3404fa74227a8167dc4b54bf8831d33.nix;
        revNum = 0;
        sha256 = "318416a90863b3d6b1b1bdd401e35740a3404fa74227a8167dc4b54bf8831d33";
        };
      r1 = {
        nix = import ../hackage/fit-0.5-r1-87f70d521590ba57a662694c83401df69c45c6c721e52119fde62685873b5f6f.nix;
        revNum = 1;
        sha256 = "87f70d521590ba57a662694c83401df69c45c6c721e52119fde62685873b5f6f";
        };
      default = "r1";
      };
    };
  "0.5.1" = {
    sha256 = "ab192e41436054b04b476670748d43ff486fc90c5f80e01397bf51103fdbf278";
    revisions = {
      r0 = {
        nix = import ../hackage/fit-0.5.1-r0-c59e181e75fa1acaed43c42173b66cfcf23cd8a98e47b268f560e6f71fcd37a2.nix;
        revNum = 0;
        sha256 = "c59e181e75fa1acaed43c42173b66cfcf23cd8a98e47b268f560e6f71fcd37a2";
        };
      default = "r0";
      };
    };
  "0.5.2" = {
    sha256 = "2e5ef15c5b4ea60f9861377a133801a3e2c28dcff74fa7aa5f9d8e6b115f3cf7";
    revisions = {
      r0 = {
        nix = import ../hackage/fit-0.5.2-r0-b5d9fb7826e4acbea0eb2ef0c4e894fb99730d64cc9f21493f896f19aecb182d.nix;
        revNum = 0;
        sha256 = "b5d9fb7826e4acbea0eb2ef0c4e894fb99730d64cc9f21493f896f19aecb182d";
        };
      default = "r0";
      };
    };
  }