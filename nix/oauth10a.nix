{
  "0.1.0.0" = {
    sha256 = "a923cb04195ed275990623b821933bc52e00a7311ee485e803d272185c11aacc";
    revisions = {
      r0 = {
        nix = import ../hackage/oauth10a-0.1.0.0-r0-f5970b84499679c1f6bd7aeb8b18104d80dc0fae19fd5cd3215bb2323880ca09.nix;
        revNum = 0;
        sha256 = "f5970b84499679c1f6bd7aeb8b18104d80dc0fae19fd5cd3215bb2323880ca09";
        };
      r1 = {
        nix = import ../hackage/oauth10a-0.1.0.0-r1-5ee8aca8d824721a86d2ecb7cc094baffa6591059e49e6f7da5682851c30b7a1.nix;
        revNum = 1;
        sha256 = "5ee8aca8d824721a86d2ecb7cc094baffa6591059e49e6f7da5682851c30b7a1";
        };
      default = "r1";
      };
    };
  }