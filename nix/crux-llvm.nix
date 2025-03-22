{
  "0.8" = {
    sha256 = "0476924ce2d5fc50cb953744d311b23c6d436a3e740a0d150bbd3601137cdb84";
    revisions = {
      r0 = {
        nix = import ../hackage/crux-llvm-0.8-r0-5dc5c819eb8dbd61a5a8bc3b754191374d85d86d40a0407e63f58a1b74545429.nix;
        revNum = 0;
        sha256 = "5dc5c819eb8dbd61a5a8bc3b754191374d85d86d40a0407e63f58a1b74545429";
      };
      default = "r0";
    };
  };
  "0.9" = {
    sha256 = "12e7afb589f5820c6c614cf39739fbba97b344b094724d4a927e0e9a3456385b";
    revisions = {
      r0 = {
        nix = import ../hackage/crux-llvm-0.9-r0-f3a41f8321f3f120aa98a22d934381e98d05da8b5642fbbb504f3bf427fc8077.nix;
        revNum = 0;
        sha256 = "f3a41f8321f3f120aa98a22d934381e98d05da8b5642fbbb504f3bf427fc8077";
      };
      default = "r0";
    };
  };
  "0.9.1" = {
    sha256 = "86187529883cf92a7c869121816b7e546534208133a281a2336b78383ff11203";
    revisions = {
      r0 = {
        nix = import ../hackage/crux-llvm-0.9.1-r0-0a49905869e34fef1278be1a7215d0bcf9095ccedba0592b0c78b53a03875bfa.nix;
        revNum = 0;
        sha256 = "0a49905869e34fef1278be1a7215d0bcf9095ccedba0592b0c78b53a03875bfa";
      };
      default = "r0";
    };
  };
}