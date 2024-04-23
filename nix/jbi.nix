{
  "0.1.0.0" = {
    sha256 = "ec204e71bcb4808e5aa45fc0c842196b3f387d3917bcdeb4b06817355de75a8e";
    revisions = {
      r0 = {
        nix = import ../hackage/jbi-0.1.0.0-r0-a383066fa49af450b67e29cab53ce74f280f1c45b64700bdca38fbd3f65e7524.nix;
        revNum = 0;
        sha256 = "a383066fa49af450b67e29cab53ce74f280f1c45b64700bdca38fbd3f65e7524";
      };
      default = "r0";
    };
  };
  "0.2.0.0" = {
    sha256 = "c467de7cefec907fa1627765a488f581aa81b0f808e49e1fe8de1c9569b80840";
    revisions = {
      r0 = {
        nix = import ../hackage/jbi-0.2.0.0-r0-84e183c413e20080a7b954f1a89dc3b40a132f5f53095477e9b37c3d1362f437.nix;
        revNum = 0;
        sha256 = "84e183c413e20080a7b954f1a89dc3b40a132f5f53095477e9b37c3d1362f437";
      };
      default = "r0";
    };
  };
}