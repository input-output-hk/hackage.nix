{
  "0.0.0.0" = {
    sha256 = "04d44feeaf05c2502039b3ce094f832d2a18819afbc755fb35f95932a0583734";
    revisions = {
      r0 = {
        nix = import ../hackage/risc-v-0.0.0.0-r0-ecef61208937639fea0736873964fa32fe2441585776f3120ebb771e20cd8a6d.nix;
        revNum = 0;
        sha256 = "ecef61208937639fea0736873964fa32fe2441585776f3120ebb771e20cd8a6d";
      };
      default = "r0";
    };
  };
  "0.0.1.0" = {
    sha256 = "1f458a7503c75d34832230fa45fa6d1ec5ac3ecf739950f4b6ff72a0b678e428";
    revisions = {
      r0 = {
        nix = import ../hackage/risc-v-0.0.1.0-r0-dce9abc77c81c945e5844b95832d820fc4564b0b8a59b4fee2636f47503c17b8.nix;
        revNum = 0;
        sha256 = "dce9abc77c81c945e5844b95832d820fc4564b0b8a59b4fee2636f47503c17b8";
      };
      default = "r0";
    };
  };
  "0.0.2.0" = {
    sha256 = "2eb0e4f76929d5254dd3629c1eec56c4f1b6fb985f6672d9d42ae347694cd2bc";
    revisions = {
      r0 = {
        nix = import ../hackage/risc-v-0.0.2.0-r0-cbe27136876abd1319b6fba60ed495e8ba444f91a4195c6c0330e4d72d8f40f2.nix;
        revNum = 0;
        sha256 = "cbe27136876abd1319b6fba60ed495e8ba444f91a4195c6c0330e4d72d8f40f2";
      };
      r1 = {
        nix = import ../hackage/risc-v-0.0.2.0-r1-501086a3101f8c91813866ed58b30c4229e52ce022f87b9f40cd425188abe13e.nix;
        revNum = 1;
        sha256 = "501086a3101f8c91813866ed58b30c4229e52ce022f87b9f40cd425188abe13e";
      };
      default = "r1";
    };
  };
}