{
  "3.0" = {
    sha256 = "256d03551d0a9e50bf55669bdfc15577cfed530d061ccd306d5781c88bf80e74";
    revisions = {
      r0 = {
        nix = import ../hackage/ForSyDe-3.0-r0-7b2877159d392ada646240a6b8e6745a5b8ceb6ca6cb19eb76b46057c3e29fbc.nix;
        revNum = 0;
        sha256 = "7b2877159d392ada646240a6b8e6745a5b8ceb6ca6cb19eb76b46057c3e29fbc";
        };
      default = "r0";
      };
    };
  "3.1" = {
    sha256 = "f24cd6245daf3765d8e038ff46c7e85911b7113cdc284d65c15f728b4a4f08bb";
    revisions = {
      r0 = {
        nix = import ../hackage/ForSyDe-3.1-r0-13b6601f2ec9044be6eb760c0e6a7e72a26f46a4f1baa8ee7ff90157099041ac.nix;
        revNum = 0;
        sha256 = "13b6601f2ec9044be6eb760c0e6a7e72a26f46a4f1baa8ee7ff90157099041ac";
        };
      default = "r0";
      };
    };
  "3.1.1" = {
    sha256 = "172e73ddde923ea430701dd7f7d08b7f970cc46d3f989f81b732b7dbfdd4fc3d";
    revisions = {
      r0 = {
        nix = import ../hackage/ForSyDe-3.1.1-r0-1cd598c26c69ff1066193018bc90ea2794e5c8743e4e5d6f55fdcd39f9ff5e2a.nix;
        revNum = 0;
        sha256 = "1cd598c26c69ff1066193018bc90ea2794e5c8743e4e5d6f55fdcd39f9ff5e2a";
        };
      r1 = {
        nix = import ../hackage/ForSyDe-3.1.1-r1-cc439d31c6dad10c1d0416e86996dde560fdbc3d48d948a5fa1dfefba8c89ee5.nix;
        revNum = 1;
        sha256 = "cc439d31c6dad10c1d0416e86996dde560fdbc3d48d948a5fa1dfefba8c89ee5";
        };
      r2 = {
        nix = import ../hackage/ForSyDe-3.1.1-r2-c8b4128797c91ec843551fe6be94c9bbbd89dc90344c99979d1c24744c8e0fab.nix;
        revNum = 2;
        sha256 = "c8b4128797c91ec843551fe6be94c9bbbd89dc90344c99979d1c24744c8e0fab";
        };
      default = "r2";
      };
    };
  }