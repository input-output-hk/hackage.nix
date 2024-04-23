{
  "1.0.0" = {
    sha256 = "f4c01ed14dfef3d329c3f903f47c4b9548962900eeba43546823064b7dbc6e8e";
    revisions = {
      r0 = {
        nix = import ../hackage/lua-arbitrary-1.0.0-r0-3af16c973a1b442e46c40e6bd53d9ddafa0e3eba10a552dcb60f7804b435d728.nix;
        revNum = 0;
        sha256 = "3af16c973a1b442e46c40e6bd53d9ddafa0e3eba10a552dcb60f7804b435d728";
      };
      r1 = {
        nix = import ../hackage/lua-arbitrary-1.0.0-r1-c12d18c27c6c9cc8df7b7167a5fafecc84ae4a48b2077c2d2bfdc723ec2e8ca5.nix;
        revNum = 1;
        sha256 = "c12d18c27c6c9cc8df7b7167a5fafecc84ae4a48b2077c2d2bfdc723ec2e8ca5";
      };
      default = "r1";
    };
  };
  "1.0.1" = {
    sha256 = "aadeb5fbcd7de95a64374a959ffc6b341db171fd3db570d1cc0cfae3f7bce205";
    revisions = {
      r0 = {
        nix = import ../hackage/lua-arbitrary-1.0.1-r0-4d29ff7cde11373ec8d495a942b114cc5aea63bcacfe48fe3d0e169f06be9baf.nix;
        revNum = 0;
        sha256 = "4d29ff7cde11373ec8d495a942b114cc5aea63bcacfe48fe3d0e169f06be9baf";
      };
      default = "r0";
    };
  };
  "1.0.1.1" = {
    sha256 = "d5f6143d9c99d44453fff535b912ad0d7ce8cb5500b1d9dc47947952e2637b4d";
    revisions = {
      r0 = {
        nix = import ../hackage/lua-arbitrary-1.0.1.1-r0-7cfd494d1a01bed3bdc0ff3f04bad58313ca812e11a47d9cf4feb6454555a180.nix;
        revNum = 0;
        sha256 = "7cfd494d1a01bed3bdc0ff3f04bad58313ca812e11a47d9cf4feb6454555a180";
      };
      default = "r0";
    };
  };
}