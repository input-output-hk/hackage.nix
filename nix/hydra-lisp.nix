{
  "0.17.0" = {
    sha256 = "a800a1ffbf9e888a23bbefcbe7dc36240df3d3477f9c7707600e569d7b12f186";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-lisp-0.17.0-r0-fc519544306b43157b6e06ff638c563246b29de91f442497bdc6f01caa78687d.nix;
        revNum = 0;
        sha256 = "fc519544306b43157b6e06ff638c563246b29de91f442497bdc6f01caa78687d";
      };
      default = "r0";
    };
  };
  "0.17.1" = {
    sha256 = "0480bd05591ef0135cb248a03a4a054f1eedbf12e41c5bb95bbb20b1156dd1cd";
    revisions = {
      r0 = {
        nix = import ../hackage/hydra-lisp-0.17.1-r0-e7d2ce37d148bd13c50167f18a14c08a06f278f90e4d33ba00ca5fb25a0829fa.nix;
        revNum = 0;
        sha256 = "e7d2ce37d148bd13c50167f18a14c08a06f278f90e4d33ba00ca5fb25a0829fa";
      };
      default = "r0";
    };
  };
}