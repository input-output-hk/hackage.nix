{
  "2.0" = {
    sha256 = "39ce8cde951b45daa72a22b0ad6bbba822beb6219c267e97e50268431e5e4ea7";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-connectcases-2.0-r0-c56626f9d8ae019fecc492ee5321f5e11f59de5e2cf742d31de7ccd2b70cc7f4.nix;
        revNum = 0;
        sha256 = "c56626f9d8ae019fecc492ee5321f5e11f59de5e2cf742d31de7ccd2b70cc7f4";
      };
      r1 = {
        nix = import ../hackage/amazonka-connectcases-2.0-r1-33d4cb48437f5c37eae48c97ff5e2df7ec47095464da2f45c8c3ee78750c8c8c.nix;
        revNum = 1;
        sha256 = "33d4cb48437f5c37eae48c97ff5e2df7ec47095464da2f45c8c3ee78750c8c8c";
      };
      default = "r1";
    };
  };
}