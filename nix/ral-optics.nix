{
  "0.1" = {
    sha256 = "79ac5a55c2d9bbc48905132099ccc601f8bde9e97969c31cedc47203d7177e6a";
    revisions = {
      r0 = {
        nix = import ../hackage/ral-optics-0.1-r0-eb110009f3a2b2a5e701de5c87cbc0759fee1926ee6d336fe50aa4bf0b4038d6.nix;
        revNum = 0;
        sha256 = "eb110009f3a2b2a5e701de5c87cbc0759fee1926ee6d336fe50aa4bf0b4038d6";
        };
      r1 = {
        nix = import ../hackage/ral-optics-0.1-r1-fb3907bafb4649cdb41b50232ec99e64a8f283addaeac1a3459eaaf5711c522c.nix;
        revNum = 1;
        sha256 = "fb3907bafb4649cdb41b50232ec99e64a8f283addaeac1a3459eaaf5711c522c";
        };
      default = "r1";
      };
    };
  "0.2" = {
    sha256 = "e13a804128e330a4f66a5063f8966644a9583537d679fec22c2af00ddcecf7e8";
    revisions = {
      r0 = {
        nix = import ../hackage/ral-optics-0.2-r0-c6528da6b714de6324de5e6ae4594468f816c029873b4897b15b2174a7fbf925.nix;
        revNum = 0;
        sha256 = "c6528da6b714de6324de5e6ae4594468f816c029873b4897b15b2174a7fbf925";
        };
      r1 = {
        nix = import ../hackage/ral-optics-0.2-r1-435819f66ac60bedb201d50650143c443d631751b595ce40d6063ca0c14e6db5.nix;
        revNum = 1;
        sha256 = "435819f66ac60bedb201d50650143c443d631751b595ce40d6063ca0c14e6db5";
        };
      r2 = {
        nix = import ../hackage/ral-optics-0.2-r2-83c815e058c9890aef6b3228c2e175c896fbb183827cfc5971d405afe12b2b84.nix;
        revNum = 2;
        sha256 = "83c815e058c9890aef6b3228c2e175c896fbb183827cfc5971d405afe12b2b84";
        };
      default = "r2";
      };
    };
  }