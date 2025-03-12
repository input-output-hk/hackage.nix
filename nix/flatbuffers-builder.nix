{
  "1.0.0.0" = {
    sha256 = "25beaf8a640c5aa1a9d991ff162c71e8854f467ae82ce2f47348639d61a35a31";
    revisions = {
      r0 = {
        nix = import ../hackage/flatbuffers-builder-1.0.0.0-r0-223f9f9b92761e53aa95334a27ade2c79e779e45d320e81e145c15451223da4f.nix;
        revNum = 0;
        sha256 = "223f9f9b92761e53aa95334a27ade2c79e779e45d320e81e145c15451223da4f";
      };
      r1 = {
        nix = import ../hackage/flatbuffers-builder-1.0.0.0-r1-224c768ed6c01279a93f10800d6342659da1b838b1eed0bdd887b3304598e1df.nix;
        revNum = 1;
        sha256 = "224c768ed6c01279a93f10800d6342659da1b838b1eed0bdd887b3304598e1df";
      };
      default = "r1";
    };
  };
}