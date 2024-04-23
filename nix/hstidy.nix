{
  "0.1" = {
    sha256 = "4b04cfa0305da86b0777196992ac84d59dcc11826e2b249c4685696682910c41";
    revisions = {
      r0 = {
        nix = import ../hackage/hstidy-0.1-r0-8df3d6220307a013b7814f63856dac182cc357f3fce6f795c10f3684bd6f20fb.nix;
        revNum = 0;
        sha256 = "8df3d6220307a013b7814f63856dac182cc357f3fce6f795c10f3684bd6f20fb";
      };
      default = "r0";
    };
  };
  "0.2" = {
    sha256 = "baef749c93e274212d953c9e97bcd461c891f3f682e0e866b182d80d686f5ac2";
    revisions = {
      r0 = {
        nix = import ../hackage/hstidy-0.2-r0-c98f9f110ad5b6515321f07944bd12453f6e9ce0dc0189544100b434f3dedde5.nix;
        revNum = 0;
        sha256 = "c98f9f110ad5b6515321f07944bd12453f6e9ce0dc0189544100b434f3dedde5";
      };
      default = "r0";
    };
  };
}