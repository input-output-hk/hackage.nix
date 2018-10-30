{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "yi-gtk";
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "dons@cse.unsw.edu.au";
      author = "Don Stewart";
      homepage = "";
      url = "";
      synopsis = "GTK backend for Yi";
      description = "Core functions for the GTK backend of Yi.\nNote that you will need the yi package to use this.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.ghc)
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.gtk)
          (hsPkgs.sourceview)
          (hsPkgs.regex-posix)
          (hsPkgs.filepath)
        ];
      };
    };
  }