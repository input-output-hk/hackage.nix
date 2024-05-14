{
  "2.0" = {
    sha256 = "a0ae173482f51e2a25f1f87b74abcb4524eb0e05ef01d08f77549f831d895186";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-panorama-2.0-r0-00ad7953198c260d5a76e9ebcc3a91a358f417c67394355ad9ed77050587806b.nix;
        revNum = 0;
        sha256 = "00ad7953198c260d5a76e9ebcc3a91a358f417c67394355ad9ed77050587806b";
      };
      r1 = {
        nix = import ../hackage/amazonka-panorama-2.0-r1-5135c48aecf94faed3fe362b76d74bf121f3e37b8c50833f7298d8d884d09d03.nix;
        revNum = 1;
        sha256 = "5135c48aecf94faed3fe362b76d74bf121f3e37b8c50833f7298d8d884d09d03";
      };
      default = "r1";
    };
  };
}