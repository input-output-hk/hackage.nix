{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "maude";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "David Lazar <lazar6@illinois.edu>";
      author = "David Lazar";
      homepage = "https://code.google.com/p/maude-hs/";
      url = "";
      synopsis = "An interface to the Maude rewriting system.";
      description = "This package provides a simple interface for doing Maude\nrewrites from within Haskell.";
      buildType = "Simple";
    };
    components = {
      "maude" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.text)
        ];
      };
    };
  }