{
  "0.1.0.0" = {
    sha256 = "cc62fef25cb09b0c51866e02677e1aecc067c9da9fb1d1dc8600a8210c9416d1";
    revisions = {
      r0 = {
        nix = import ../hackage/arrow-utils-0.1.0.0-r0-77a14440d90d38bc21818a4320e14e1fb0afdfc93b99683fd7bb189904506256.nix;
        revNum = 0;
        sha256 = "77a14440d90d38bc21818a4320e14e1fb0afdfc93b99683fd7bb189904506256";
        };
      r1 = {
        nix = import ../hackage/arrow-utils-0.1.0.0-r1-96ca641882fb266887b276a888092dc935ac7246d95999978f724194ab0cb4c9.nix;
        revNum = 1;
        sha256 = "96ca641882fb266887b276a888092dc935ac7246d95999978f724194ab0cb4c9";
        };
      default = "r1";
      };
    };
  "0.1.1" = {
    sha256 = "8c9edc56a9e6a9402b3896bd14630c216eab3dba15f709afc39612821e394f84";
    revisions = {
      r0 = {
        nix = import ../hackage/arrow-utils-0.1.1-r0-135f527058ef3228a4b7efc91cd2b2a583582e7f1b88d61b084d260b81a8598e.nix;
        revNum = 0;
        sha256 = "135f527058ef3228a4b7efc91cd2b2a583582e7f1b88d61b084d260b81a8598e";
        };
      default = "r0";
      };
    };
  }