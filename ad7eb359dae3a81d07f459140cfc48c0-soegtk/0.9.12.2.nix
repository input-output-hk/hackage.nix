{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "0";
      identifier = {
        name = "soegtk";
        version = "0.9.12.2";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "gtk2hs-devel@lists.sourceforge.net";
      author = "Duncan Coutts <duncan@haskell.org>";
      homepage = "http://haskell.org/gtk2hs/";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Custom";
    };
    components = {
      "soegtk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.gtk)
          (hsPkgs.cairo)
        ];
      };
    };
  }