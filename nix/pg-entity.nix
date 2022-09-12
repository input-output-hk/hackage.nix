{
  "0.0.1.0" = {
    sha256 = "a97df4637f2a244eb3a2b90a4d9b2cee5653bb1991956d2651ff451d7ba7555a";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-entity-0.0.1.0-r0-a080352564474dd77929e0ca5acdf39fa993ce9ccee7273fa1bfe6c58b196e14.nix;
        revNum = 0;
        sha256 = "a080352564474dd77929e0ca5acdf39fa993ce9ccee7273fa1bfe6c58b196e14";
        };
      default = "r0";
      };
    };
  "0.0.2.0" = {
    sha256 = "3bcc0981b43722de34b2d610ddfef8c43fb97607297a0b4052a4d2425364113d";
    revisions = {
      r0 = {
        nix = import ../hackage/pg-entity-0.0.2.0-r0-9edabed1ad352482c732e4e80255deae01ee0f9cc07e4394f5fc90e6729580e0.nix;
        revNum = 0;
        sha256 = "9edabed1ad352482c732e4e80255deae01ee0f9cc07e4394f5fc90e6729580e0";
        };
      r1 = {
        nix = import ../hackage/pg-entity-0.0.2.0-r1-3231329f83d7a2ae4d8c2b6061fb94c1b8f51ea06541d6560f4cb67db08ec00d.nix;
        revNum = 1;
        sha256 = "3231329f83d7a2ae4d8c2b6061fb94c1b8f51ea06541d6560f4cb67db08ec00d";
        };
      default = "r1";
      };
    };
  }