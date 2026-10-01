{
  "0.1.0.0" = {
    sha256 = "a64c2be6d58dfb4d447be209c05e26529ad47e616bdbfcacb50e620986212273";
    revisions = {
      r0 = {
        nix = import ../hackage/microdns-0.1.0.0-r0-ade2a6308dfb45752671568f48cc6744895ce8cf79cbbcf9b522c6bdfed33f39.nix;
        revNum = 0;
        sha256 = "ade2a6308dfb45752671568f48cc6744895ce8cf79cbbcf9b522c6bdfed33f39";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "919c89c7c5abff41bc53b9b8850ee40ca6c967826a535ba8f27a13e770f47194";
    revisions = {
      r0 = {
        nix = import ../hackage/microdns-0.2.0.0-r0-07563370e79d5283021ace5cf4ab409434ebc0dacd7c5f0d09c2a80c6cc37572.nix;
        revNum = 0;
        sha256 = "07563370e79d5283021ace5cf4ab409434ebc0dacd7c5f0d09c2a80c6cc37572";
      };
      default = "r0";
    };
  };
}