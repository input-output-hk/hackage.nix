{
  "0.1" = {
    sha256 = "7c74406fbe3a4c7ff49a577190b434922d2451ebf6b6d9a3e4c2fa41b8edfd79";
    revisions = {
      r0 = {
        nix = import ../hackage/pecoff-0.1-r0-3da24a56e967b35e42445eb140ae2aa73d79333b197f4be43cb3abf47b1f1c4a.nix;
        revNum = 0;
        sha256 = "3da24a56e967b35e42445eb140ae2aa73d79333b197f4be43cb3abf47b1f1c4a";
      };
      default = "r0";
    };
  };
  "0.11" = {
    sha256 = "38fc0de406f1d44ccf570e39bf8fa69d159d3d2b0100b48c223381419d14626d";
    revisions = {
      r0 = {
        nix = import ../hackage/pecoff-0.11-r0-dd2109dbb415455aba8c8e1cfec8a05fcc8f264ccedbe045c5f95e3b7137553d.nix;
        revNum = 0;
        sha256 = "dd2109dbb415455aba8c8e1cfec8a05fcc8f264ccedbe045c5f95e3b7137553d";
      };
      default = "r0";
    };
  };
}