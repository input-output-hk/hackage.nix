{
  "0.1.0.0" = {
    sha256 = "3de7ec279dc62fdc537303ccf7ed5812bb12e48e213fd649fc8d64c136867f4a";
    revisions = {
      r0 = {
        nix = import ../hackage/ehs-0.1.0.0-r0-29537e2254e4eb8d93a1e924cfd8f8c7eeddd2116faa856cfa9ca7b925ba4dad.nix;
        revNum = 0;
        sha256 = "29537e2254e4eb8d93a1e924cfd8f8c7eeddd2116faa856cfa9ca7b925ba4dad";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "8118468de3a64f0d4332b53e872308eca24598f3f7fd7f02b42e35694ac235bc";
    revisions = {
      r0 = {
        nix = import ../hackage/ehs-0.1.0.1-r0-b441ebc0c90038eddcf948589378afc98db2145d40d6d6e6bc6d57a06a2e9d73.nix;
        revNum = 0;
        sha256 = "b441ebc0c90038eddcf948589378afc98db2145d40d6d6e6bc6d57a06a2e9d73";
      };
      default = "r0";
    };
  };
  "0.7.0" = {
    sha256 = "3d84485f15b876982c857a57e6e0fec85417c85eddd6b6f4344b3db30f8b934d";
    revisions = {
      r0 = {
        nix = import ../hackage/ehs-0.7.0-r0-4a572e4b1e2414c2cfc1912e2db4749df9028a8ebd88fd7a137a72af32791fd8.nix;
        revNum = 0;
        sha256 = "4a572e4b1e2414c2cfc1912e2db4749df9028a8ebd88fd7a137a72af32791fd8";
      };
      r1 = {
        nix = import ../hackage/ehs-0.7.0-r1-70611443f9f287b02d0292499198bec3212b9ca617f4d0dc051d2c0e9d4481ec.nix;
        revNum = 1;
        sha256 = "70611443f9f287b02d0292499198bec3212b9ca617f4d0dc051d2c0e9d4481ec";
      };
      r2 = {
        nix = import ../hackage/ehs-0.7.0-r2-01b69d1840f404a190bf7459ae287337c2fa128d2571e9216e25d231873ec2ac.nix;
        revNum = 2;
        sha256 = "01b69d1840f404a190bf7459ae287337c2fa128d2571e9216e25d231873ec2ac";
      };
      r3 = {
        nix = import ../hackage/ehs-0.7.0-r3-e27ea9e604b3868e61e330abcd605d550371ef7f2c27e12e60b1caad99458222.nix;
        revNum = 3;
        sha256 = "e27ea9e604b3868e61e330abcd605d550371ef7f2c27e12e60b1caad99458222";
      };
      default = "r3";
    };
  };
}