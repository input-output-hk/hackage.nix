{
  "2.0" = {
    sha256 = "b22278ce0feec6b422b6570c4d2152b508c68caff873352737d999bdb3a396e8";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-dataexchange-2.0-r0-969a3fd2b0ba55fdd873f092db69f340f83d178937d6c3d92ca365eed390206a.nix;
        revNum = 0;
        sha256 = "969a3fd2b0ba55fdd873f092db69f340f83d178937d6c3d92ca365eed390206a";
      };
      r1 = {
        nix = import ../hackage/amazonka-dataexchange-2.0-r1-eda06c4728ed4ad7f6ee7676fd29ded1a678688660fb049b49c8ce1bb318584d.nix;
        revNum = 1;
        sha256 = "eda06c4728ed4ad7f6ee7676fd29ded1a678688660fb049b49c8ce1bb318584d";
      };
      default = "r1";
    };
  };
}