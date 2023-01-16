{
  "0.0" = {
    sha256 = "117319c36a20efea6d9edd0a8d902e37ec0386512f2eb8a6e5563411c00c6ac2";
    revisions = {
      r0 = {
        nix = import ../hackage/cutter-0.0-r0-d6bd7b107f0a10b51939483ae4e4fcc29c95b2bae123175bcd134fe8e14125c9.nix;
        revNum = 0;
        sha256 = "d6bd7b107f0a10b51939483ae4e4fcc29c95b2bae123175bcd134fe8e14125c9";
        };
      r1 = {
        nix = import ../hackage/cutter-0.0-r1-9ec194b92eb32530b455830931d7002c55f29ae1a3c2806b98316bdae002d001.nix;
        revNum = 1;
        sha256 = "9ec194b92eb32530b455830931d7002c55f29ae1a3c2806b98316bdae002d001";
        };
      default = "r1";
      };
    };
  }