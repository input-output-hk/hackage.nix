{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { graphics = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "haskell-igraph"; version = "0.5.0"; };
      license = "MIT";
      copyright = "(c) 2016-2018 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Haskell interface of the igraph library.";
      description = "igraph<\"http://igraph.org/c/\"> is a library for creating\nand manipulating large graphs. This package provides the Haskell\ninterface of igraph.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.cereal)
          (hsPkgs.cereal-conduit)
          (hsPkgs.colour)
          (hsPkgs.conduit)
          (hsPkgs.primitive)
          (hsPkgs.unordered-containers)
          (hsPkgs.hashable)
          (hsPkgs.hxt)
          (hsPkgs.split)
          (hsPkgs.data-default-class)
          ] ++ (pkgs.lib).optionals (flags.graphics) [
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-cairo)
          ];
        libs = [ (pkgs."igraph") ];
        build-tools = [ ((hsPkgs.buildPackages).c2hs) ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-igraph)
            (hsPkgs.cereal)
            (hsPkgs.conduit)
            (hsPkgs.data-ordlist)
            (hsPkgs.matrices)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hunit)
            (hsPkgs.random)
            ];
          };
        };
      };
    }