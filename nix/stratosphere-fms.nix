{
  "1.0.0" = {
    sha256 = "01562f5372879b6ba321378f2e3a94be63479d0e030c12d70552a8981d9a980b";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-fms-1.0.0-r0-7535e27a80f1de30de70e49ce9ff5d562b0861f155915a37543c21ac6bf4ac59.nix;
        revNum = 0;
        sha256 = "7535e27a80f1de30de70e49ce9ff5d562b0861f155915a37543c21ac6bf4ac59";
      };
      default = "r0";
    };
  };
  "1.0.1" = {
    sha256 = "77b261e7aa4fd97a672d08990a3f787c5883b3bba3e9c78bef2c27aba442ef3f";
    revisions = {
      r0 = {
        nix = import ../hackage/stratosphere-fms-1.0.1-r0-bcc1eb610556dbeac46dd05d3348237756331a101901d7ad7a54233c7f5f894b.nix;
        revNum = 0;
        sha256 = "bcc1eb610556dbeac46dd05d3348237756331a101901d7ad7a54233c7f5f894b";
      };
      default = "r0";
    };
  };
}