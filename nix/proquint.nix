{
  "0.1.0.0" = {
    sha256 = "e5f153323fd0b47c7128887b139b454df58d8a4e177f33a1055b79ca72de1012";
    revisions = {
      r0 = {
        nix = import ../hackage/proquint-0.1.0.0-r0-c9ee6d3723c5ef76c4edbae527a08e15e6ca6bcfe42c304bf27f9a75c8de7ad6.nix;
        revNum = 0;
        sha256 = "c9ee6d3723c5ef76c4edbae527a08e15e6ca6bcfe42c304bf27f9a75c8de7ad6";
      };
      r1 = {
        nix = import ../hackage/proquint-0.1.0.0-r1-861a05c4c1d21b17400d348dd1df4ad91b576b2a3c5ddc7181899fc9ae1c7adc.nix;
        revNum = 1;
        sha256 = "861a05c4c1d21b17400d348dd1df4ad91b576b2a3c5ddc7181899fc9ae1c7adc";
      };
      r2 = {
        nix = import ../hackage/proquint-0.1.0.0-r2-4d40b1c0dee34bdfc3ad051f3b260a77b8304afc2f5b336cce233a733e130cae.nix;
        revNum = 2;
        sha256 = "4d40b1c0dee34bdfc3ad051f3b260a77b8304afc2f5b336cce233a733e130cae";
      };
      r3 = {
        nix = import ../hackage/proquint-0.1.0.0-r3-1589f5efaf639030cb0f21b79e61a860ab6715776d300c6dc6ccfa2c1ec1ee19.nix;
        revNum = 3;
        sha256 = "1589f5efaf639030cb0f21b79e61a860ab6715776d300c6dc6ccfa2c1ec1ee19";
      };
      default = "r3";
    };
  };
}