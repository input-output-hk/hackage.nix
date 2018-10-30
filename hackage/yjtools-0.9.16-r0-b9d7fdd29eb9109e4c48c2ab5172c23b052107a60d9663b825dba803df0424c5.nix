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
      specVersion = "1.2";
      identifier = {
        name = "yjtools";
        version = "0.9.16";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/yjtools/index.xhtml";
      url = "http://code.haskell.org/yjtools/";
      synopsis = "some tools for Monad, List, Tuple and so on.";
      description = "ifM, whenM, unlessM, doWhile, doWhile_ and so on.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }