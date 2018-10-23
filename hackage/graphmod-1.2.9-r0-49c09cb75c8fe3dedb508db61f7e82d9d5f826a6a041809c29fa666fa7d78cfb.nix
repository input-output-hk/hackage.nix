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
        name = "graphmod";
        version = "1.2.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "iavor.diatchki@gmail.com";
      author = "Iavor S. Diatchki";
      homepage = "http://github.com/yav/graphmod/wiki";
      url = "";
      synopsis = "Present the module dependencies of a program as a \"dot\" graph.";
      description = "This package contains a program that computes \"dot\" graphs\nfrom the dependencies of a number of Haskell modules.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "graphmod" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.dotgen)
            (hsPkgs.haskell-lexer)
            (hsPkgs.containers)
            (hsPkgs.Cabal)
          ];
        };
      };
    };
  }