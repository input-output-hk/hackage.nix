{
  "0.1.0.0" = {
    sha256 = "1e7c819476d922f70f3321852d33283518cb2ff41d22fc394bcbd9aca543057d";
    revisions = {
      r0 = {
        nix = import ../hackage/cli-nix-0.1.0.0-r0-c3c538448f17fa7cb6b91d73ab88c39862892078f0c29ba592f7f3b141f3e671.nix;
        revNum = 0;
        sha256 = "c3c538448f17fa7cb6b91d73ab88c39862892078f0c29ba592f7f3b141f3e671";
      };
      default = "r0";
    };
  };
  "0.1.0.1" = {
    sha256 = "92d39cfff0d88aa2a6e7bdda620953bbf069abdaa5d5b6c0798843ff4fb4d9fa";
    revisions = {
      r0 = {
        nix = import ../hackage/cli-nix-0.1.0.1-r0-8eec7be4c1f131c37e70d2d3c9a8ef2be1ff5f27db7b27c275e7bbe8e1a818ca.nix;
        revNum = 0;
        sha256 = "8eec7be4c1f131c37e70d2d3c9a8ef2be1ff5f27db7b27c275e7bbe8e1a818ca";
      };
      default = "r0";
    };
  };
  "0.1.1.0" = {
    sha256 = "4634b41c4e83814fc5f167bcd947a506d078b585f11c408c367bba1fe69d4d3a";
    revisions = {
      r0 = {
        nix = import ../hackage/cli-nix-0.1.1.0-r0-3d97503c47355cf7e81200f52df062751ac3abcf6d62f86daad5e7d380795228.nix;
        revNum = 0;
        sha256 = "3d97503c47355cf7e81200f52df062751ac3abcf6d62f86daad5e7d380795228";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "f0af9484030661856ee2910343a61738d356bbff7682fe49b0fdaab7b6046508";
    revisions = {
      r0 = {
        nix = import ../hackage/cli-nix-0.2.0.0-r0-00aa1abd7bdc589362a5615390694c206adc0d5688e71c35bdc9e75119992950.nix;
        revNum = 0;
        sha256 = "00aa1abd7bdc589362a5615390694c206adc0d5688e71c35bdc9e75119992950";
      };
      r1 = {
        nix = import ../hackage/cli-nix-0.2.0.0-r1-8bd5c22976ea5d3752b253ff15ac90899187ae3ae597dd06ef825a8ab40490de.nix;
        revNum = 1;
        sha256 = "8bd5c22976ea5d3752b253ff15ac90899187ae3ae597dd06ef825a8ab40490de";
      };
      r2 = {
        nix = import ../hackage/cli-nix-0.2.0.0-r2-d5d61000d78ebcfa26b9bf815b9ad0c5afb7b0624d7851cdf7a5ad737a3ce02d.nix;
        revNum = 2;
        sha256 = "d5d61000d78ebcfa26b9bf815b9ad0c5afb7b0624d7851cdf7a5ad737a3ce02d";
      };
      default = "r2";
    };
  };
}