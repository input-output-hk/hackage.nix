{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "ghc-syb";
        version = "0.1.2.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Claus Reinke 2008";
      maintainer = "Thomas Schilling <nominolo@googlemail.com>";
      author = "Claus Reinke";
      homepage = "http://github.com/nominolo/ghc-syb";
      url = "";
      synopsis = "SYB instances for the GHC API";
      description = "Scrap Your Boilerplate instances and utils for the GHC API.";
      buildType = "Simple";
    };
    components = {
      "ghc-syb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.ghc)
        ];
      };
    };
  }