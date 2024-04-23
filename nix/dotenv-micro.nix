{
  "0.1.0.0" = {
    sha256 = "fe7717f714bafd3e8a19c8729586ecca5f4fa1d1786b966099c1b7426b1bc936";
    revisions = {
      r0 = {
        nix = import ../hackage/dotenv-micro-0.1.0.0-r0-389a02ca3d6473af9d7d505f5b819f8ac622809dad0fafff79d9a87568cc6102.nix;
        revNum = 0;
        sha256 = "389a02ca3d6473af9d7d505f5b819f8ac622809dad0fafff79d9a87568cc6102";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "5cdeca362003fa70508a4e1a882bfc8fbf02254dbf4ff1686d9150af66a34a68";
    revisions = {
      r0 = {
        nix = import ../hackage/dotenv-micro-0.1.0.1-r0-8a5c2f960e12ddd2534cc2c2c08555ee56d4f40daf2ad93b6bea8f275f12cf6b.nix;
        revNum = 0;
        sha256 = "8a5c2f960e12ddd2534cc2c2c08555ee56d4f40daf2ad93b6bea8f275f12cf6b";
      };
      r1 = {
        nix = import ../hackage/dotenv-micro-0.1.0.1-r1-7cc4d8ad8452b2b8fd1e4c0b1d3ee69ceebb73c98f1697d1dd647a1e820afdf5.nix;
        revNum = 1;
        sha256 = "7cc4d8ad8452b2b8fd1e4c0b1d3ee69ceebb73c98f1697d1dd647a1e820afdf5";
      };
      default = "r1";
    };
  };
}