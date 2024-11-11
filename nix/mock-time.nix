{
  "0.1.0" = {
    sha256 = "4f02e2c3487318472f8916d4595ce10c41cd7defd5333f08c427ae39dea4963b";
    revisions = {
      r0 = {
        nix = import ../hackage/mock-time-0.1.0-r0-e81c11d2272029c1a0b31b1a516b6f4a801baf5019439c6c365d36087f3e5667.nix;
        revNum = 0;
        sha256 = "e81c11d2272029c1a0b31b1a516b6f4a801baf5019439c6c365d36087f3e5667";
      };
      default = "r0";
    };
  };
  "0.1.1" = {
    sha256 = "d1069964e8b60a0358e1be4c06df971036b9df3b4313fd9146a41e669ab867c8";
    revisions = {
      r0 = {
        nix = import ../hackage/mock-time-0.1.1-r0-64eddbcb5c9898dde2fedeb6477d7a12c9ce927cd40256c5291bf2e142fbb5f4.nix;
        revNum = 0;
        sha256 = "64eddbcb5c9898dde2fedeb6477d7a12c9ce927cd40256c5291bf2e142fbb5f4";
      };
      default = "r0";
    };
  };
}