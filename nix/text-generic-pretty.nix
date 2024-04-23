{
  "1.2.1" = {
    sha256 = "cff331fdea2f695cf9a2583f4bd7393935b4a6ffa2bd47eb7dd983c6184752c7";
    revisions = {
      r0 = {
        nix = import ../hackage/text-generic-pretty-1.2.1-r0-8bd6126f1f3f5cc29f12c1e8a22a520336bcaa584baf2e7e73f86ebc26249563.nix;
        revNum = 0;
        sha256 = "8bd6126f1f3f5cc29f12c1e8a22a520336bcaa584baf2e7e73f86ebc26249563";
      };
      r1 = {
        nix = import ../hackage/text-generic-pretty-1.2.1-r1-bf2ffe6b6f4417c2fedeb94df078a993dfeab0bc0b048f4570e6135e9a15a1d4.nix;
        revNum = 1;
        sha256 = "bf2ffe6b6f4417c2fedeb94df078a993dfeab0bc0b048f4570e6135e9a15a1d4";
      };
      default = "r1";
    };
  };
}