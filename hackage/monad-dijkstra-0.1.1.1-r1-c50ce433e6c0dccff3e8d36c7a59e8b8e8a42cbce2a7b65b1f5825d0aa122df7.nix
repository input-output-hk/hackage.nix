{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "monad-dijkstra"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016 Enno Cramer";
      maintainer = "Enno Cramer <ecramer@memfrob.de>";
      author = "Enno Cramer";
      homepage = "https://github.com/ennocramer/monad-dijkstra";
      url = "";
      synopsis = "Monad transformer for weighted graph searches using Dijkstra's or A* algorithm";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.free)
          (hsPkgs.psqueues)
          ];
        };
      tests = {
        "test-monad-dijkstra" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hspec)
            (hsPkgs.monad-dijkstra)
            ] ++ (pkgs.lib).optional (!(compiler.isGhc && (compiler.version).ge "8.0")) (hsPkgs.semigroups);
          };
        "style-monad-dijkstra" = {
          depends = [ (hsPkgs.base) (hsPkgs.hlint) ];
          };
        };
      };
    }