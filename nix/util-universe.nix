{
  "0.1.0.0" = {
    sha256 = "1ed15138fd011af2697d363c55224f95500a06d1d4fc8ad11bd94e12582cf1ca";
    revisions = {
      r0 = {
        nix = import ../hackage/util-universe-0.1.0.0-r0-b439476b8a1de511a59fa9ebf1db94a47af5d515606a5baa1e629f948e88b7b6.nix;
        revNum = 0;
        sha256 = "b439476b8a1de511a59fa9ebf1db94a47af5d515606a5baa1e629f948e88b7b6";
      };
      r1 = {
        nix = import ../hackage/util-universe-0.1.0.0-r1-ec9e7a87a535678fd885f5a02870f8f27ef487fe4a86722ebbf7d4f13fe9de1c.nix;
        revNum = 1;
        sha256 = "ec9e7a87a535678fd885f5a02870f8f27ef487fe4a86722ebbf7d4f13fe9de1c";
      };
      default = "r1";
    };
  };
}