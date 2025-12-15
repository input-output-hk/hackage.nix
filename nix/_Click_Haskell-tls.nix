{
  "1.0.0" = {
    sha256 = "3580fcecda9ea4126c93245d0b343162fedfa37e8f1e10e0aa958e83b56fd9b7";
    revisions = {
      r0 = {
        nix = import ../hackage/ClickHaskell-tls-1.0.0-r0-d27fd1de67e42daf3006016034e19a756e81562e305ff01a2f0ca8e83cf2e942.nix;
        revNum = 0;
        sha256 = "d27fd1de67e42daf3006016034e19a756e81562e305ff01a2f0ca8e83cf2e942";
      };
      r1 = {
        nix = import ../hackage/ClickHaskell-tls-1.0.0-r1-8eea7c08f622ddb5b6ebfc0623cfcf77fa0052d98aef3b561d4822295b1b855c.nix;
        revNum = 1;
        sha256 = "8eea7c08f622ddb5b6ebfc0623cfcf77fa0052d98aef3b561d4822295b1b855c";
      };
      default = "r1";
    };
  };
}