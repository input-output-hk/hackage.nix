{
  "2.0" = {
    sha256 = "49deff007b4a43faaaef354167a0700fdc4dd318ceae256991861e2c928010d9";
    revisions = {
      r0 = {
        nix = import ../hackage/amazonka-controltower-2.0-r0-94ee3d34e8e0bb0abab8b54955f56f13cdac082935f97e89e9c066585d72a3b4.nix;
        revNum = 0;
        sha256 = "94ee3d34e8e0bb0abab8b54955f56f13cdac082935f97e89e9c066585d72a3b4";
      };
      r1 = {
        nix = import ../hackage/amazonka-controltower-2.0-r1-408761426a1d7592dd7b0fdaaf068cc26fbd37cef3cf471ffe2f099e9d5f574f.nix;
        revNum = 1;
        sha256 = "408761426a1d7592dd7b0fdaaf068cc26fbd37cef3cf471ffe2f099e9d5f574f";
      };
      default = "r1";
    };
  };
}