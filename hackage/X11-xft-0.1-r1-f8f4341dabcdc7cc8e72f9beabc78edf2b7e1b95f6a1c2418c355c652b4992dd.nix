{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "X11-xft";
        version = "0.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "clemens@endorphin.org";
      author = "Clemens Fruhwirth";
      homepage = "";
      url = "";
      synopsis = "Bindings to the Xft, X Free Type interface library, and some Xrender parts";
      description = "Bindings to the Xft, X Free Type interface library, and some Xrender parts";
      buildType = "Custom";
    };
    components = {
      "X11-xft" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.X11)
          (hsPkgs.utf8-string)
        ];
        libs = [ (pkgs."Xft") ];
      };
    };
  }