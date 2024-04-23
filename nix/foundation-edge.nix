{
  "0.0.1" = {
    sha256 = "8451eff606d689409ba70109a2fc6744ac849c56c0207a47275a4fadcf6ba257";
    revisions = {
      r0 = {
        nix = import ../hackage/foundation-edge-0.0.1-r0-dced4e5c9dd77f07fd41a9f0a135adad30e987ad95e7c27a0031d4fd788ddb9f.nix;
        revNum = 0;
        sha256 = "dced4e5c9dd77f07fd41a9f0a135adad30e987ad95e7c27a0031d4fd788ddb9f";
      };
      default = "r0";
    };
  };
  "0.0.2" = {
    sha256 = "e1e4295ebf93bbf2478fe9b1204f4ca15e1bcdd55e0bffae598cd68714e1acb5";
    revisions = {
      r0 = {
        nix = import ../hackage/foundation-edge-0.0.2-r0-278ede6bb8fb241eeae0871a187fb65e2009a956dc70dc261a9b59c03318f92a.nix;
        revNum = 0;
        sha256 = "278ede6bb8fb241eeae0871a187fb65e2009a956dc70dc261a9b59c03318f92a";
      };
      r1 = {
        nix = import ../hackage/foundation-edge-0.0.2-r1-dd399fb6c233c4a239d207eb1d69f4c666a3ece2c00936883607bbada45c8507.nix;
        revNum = 1;
        sha256 = "dd399fb6c233c4a239d207eb1d69f4c666a3ece2c00936883607bbada45c8507";
      };
      default = "r1";
    };
  };
  "0.0.3" = {
    sha256 = "ab0ab563b884ec1bd2167867285223f16673d453c0703d7edd20dc6431551737";
    revisions = {
      r0 = {
        nix = import ../hackage/foundation-edge-0.0.3-r0-ae2133074cb651379c101697a71fa0d3693d8780687c8ec8a13cb98c1fb48d7f.nix;
        revNum = 0;
        sha256 = "ae2133074cb651379c101697a71fa0d3693d8780687c8ec8a13cb98c1fb48d7f";
      };
      default = "r0";
    };
  };
}