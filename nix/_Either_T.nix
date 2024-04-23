{
  "0.0.1" = {
    sha256 = "b883779b730a12934714f9f4527460d57c7b68de2581ea5b708787f5e7c496e7";
    revisions = {
      r0 = {
        nix = import ../hackage/EitherT-0.0.1-r0-ea60a59eb440f5cfd1a433ff63a371e50b396aec614e36ff53e9093142fa4b1e.nix;
        revNum = 0;
        sha256 = "ea60a59eb440f5cfd1a433ff63a371e50b396aec614e36ff53e9093142fa4b1e";
      };
      r1 = {
        nix = import ../hackage/EitherT-0.0.1-r1-f942e73c58bdbe10a915e54bea5be569c6d325909fa4caad8dbda720b3d13c76.nix;
        revNum = 1;
        sha256 = "f942e73c58bdbe10a915e54bea5be569c6d325909fa4caad8dbda720b3d13c76";
      };
      default = "r1";
    };
  };
  "0.1.0" = {
    sha256 = "a28f0d02ade6d441fe39682ec7bcd12c7e4f1959ed848e1233eeb474cafa34ea";
    revisions = {
      r0 = {
        nix = import ../hackage/EitherT-0.1.0-r0-c7de763feb21a23d077d509ff67366e20bfc95d12b68b1f6f253840e7cb16786.nix;
        revNum = 0;
        sha256 = "c7de763feb21a23d077d509ff67366e20bfc95d12b68b1f6f253840e7cb16786";
      };
      default = "r0";
    };
  };
  "0.2.0" = {
    sha256 = "5c6bc80ceae21f0ec21960f9b9a202ef09c70f1b6734d2d6e12ee0f6d3213eef";
    revisions = {
      r0 = {
        nix = import ../hackage/EitherT-0.2.0-r0-205b8c8735fc0d297a72ac72cf51b5ec8bf1d9631a1c082697756f0f0a924970.nix;
        revNum = 0;
        sha256 = "205b8c8735fc0d297a72ac72cf51b5ec8bf1d9631a1c082697756f0f0a924970";
      };
      r1 = {
        nix = import ../hackage/EitherT-0.2.0-r1-a1c6f78c9a4379af0738a6d4dee5d1781099c5c56acb0b39c45ad23b256e8c6e.nix;
        revNum = 1;
        sha256 = "a1c6f78c9a4379af0738a6d4dee5d1781099c5c56acb0b39c45ad23b256e8c6e";
      };
      default = "r1";
    };
  };
}