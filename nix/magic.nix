{
  "1.0.5" = {
    sha256 = "2872bb5a3f89a3ca9dc1c6d07db76ca49b7423e1946b90d86d49dd569491ef3a";
    revisions = {
      r0 = {
        nix = import ../hackage/magic-1.0.5-r0-7abe2bd9f36c0c68679443fd9398dcdb422d4c18c864f4234552fedc2282664b.nix;
        revNum = 0;
        sha256 = "7abe2bd9f36c0c68679443fd9398dcdb422d4c18c864f4234552fedc2282664b";
        };
      r1 = {
        nix = import ../hackage/magic-1.0.5-r1-d7efaf9deefadabb093310abcee737bf8a6e46c06d8621fab8de6faef367040e.nix;
        revNum = 1;
        sha256 = "d7efaf9deefadabb093310abcee737bf8a6e46c06d8621fab8de6faef367040e";
        };
      default = "r1";
      };
    };
  "1.0.7" = {
    sha256 = "ff31397b29d6bc818130aa0819421d0126a1b92badabb6ab0acce22dc859e5d6";
    revisions = {
      r0 = {
        nix = import ../hackage/magic-1.0.7-r0-714ac005cc9cfdcafbd36520fdc06eca96b716dfa1b7e7087880a06f12c7c037.nix;
        revNum = 0;
        sha256 = "714ac005cc9cfdcafbd36520fdc06eca96b716dfa1b7e7087880a06f12c7c037";
        };
      default = "r0";
      };
    };
  "1.0.8" = {
    sha256 = "029711dfe5d25ff7d9ee607c6113043f0a6fc1ca4cd50f65e0f2cc23664f947c";
    revisions = {
      r0 = {
        nix = import ../hackage/magic-1.0.8-r0-05f6d6f93f5297889d138633af2cc64e08c1066ec3acd124a3c8913ad4368b65.nix;
        revNum = 0;
        sha256 = "05f6d6f93f5297889d138633af2cc64e08c1066ec3acd124a3c8913ad4368b65";
        };
      default = "r0";
      };
    };
  "1.1" = {
    sha256 = "b21c3b69f57b64199c1d7be0ac8ea1d02d698be59943058f6a2d642ea57ce082";
    revisions = {
      r0 = {
        nix = import ../hackage/magic-1.1-r0-3a31ca1c49fa5f6a857f647471739bd240a6020af6ae43e71fb72201fc482fa2.nix;
        revNum = 0;
        sha256 = "3a31ca1c49fa5f6a857f647471739bd240a6020af6ae43e71fb72201fc482fa2";
        };
      default = "r0";
      };
    };
  }