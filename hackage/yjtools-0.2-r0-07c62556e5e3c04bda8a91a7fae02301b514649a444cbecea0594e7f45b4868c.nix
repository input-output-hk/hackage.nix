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
        version = "0.2";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Yoshikuni Jujo <PAF01143@nifty.ne.jp>";
      author = "Yoshikuni Jujo";
      homepage = "http://homepage3.nifty.com/salamander/second/projects/yjtools/index.xhtml";
      url = "http://homepage3.nifty.com/salamander/second/portage/distfiles/yj-gentoo-haskell-tools-0.0.tar.gz";
      synopsis = "some tools for Monad";
      description = "ifM, whenM, unlessM, doWhile, doWhile_ and so on.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }