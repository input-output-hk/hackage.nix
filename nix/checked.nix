{
  "0.1.0.0" = {
    sha256 = "795b9273ac949e664be7f0bfb2374d7fa41d844374a3e880ce533fdc5ddc66d7";
    revisions = {
      r0 = {
        nix = import ../hackage/checked-0.1.0.0-r0-6bc50aebacfdcfd436379db2c7ea846d4720a7052740530c3112faecc27d3ab4.nix;
        revNum = 0;
        sha256 = "6bc50aebacfdcfd436379db2c7ea846d4720a7052740530c3112faecc27d3ab4";
        };
      default = "r0";
      };
    };
  "0.1.0.1" = {
    sha256 = "adea2330a33548439be112ac9ecbacfa45bd4282def658108a57b4d83a268002";
    revisions = {
      r0 = {
        nix = import ../hackage/checked-0.1.0.1-r0-0db6a8f5bea864c7aeee03e12d575a0ca10c22212f04655fa2d3a3ed4e251264.nix;
        revNum = 0;
        sha256 = "0db6a8f5bea864c7aeee03e12d575a0ca10c22212f04655fa2d3a3ed4e251264";
        };
      r1 = {
        nix = import ../hackage/checked-0.1.0.1-r1-2d72789e3c47fd8fcb318585050ad436c6af952066efc5886b9215bb9f180f84.nix;
        revNum = 1;
        sha256 = "2d72789e3c47fd8fcb318585050ad436c6af952066efc5886b9215bb9f180f84";
        };
      default = "r1";
      };
    };
  }