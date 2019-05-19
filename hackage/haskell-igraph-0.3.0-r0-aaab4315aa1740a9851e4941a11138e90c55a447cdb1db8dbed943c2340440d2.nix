{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { graphics = false; };
    package = {
      specVersion = "1.24";
      identifier = { name = "haskell-igraph"; version = "0.3.0"; };
      license = "MIT";
      copyright = "(c) 2016 Kai Zhang";
      maintainer = "kai@kzhang.org";
      author = "Kai Zhang";
      homepage = "";
      url = "";
      synopsis = "Imcomplete igraph bindings";
      description = "This is an attempt to create a complete bindings for the\nigraph<\"http://igraph.org/c/\"> library.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.binary)
          (hsPkgs.bytestring)
          (hsPkgs.bytestring-lexing)
          (hsPkgs.colour)
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
        build-tools = [
          (hsPkgs.buildPackages.c2hs or (pkgs.buildPackages.c2hs))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.haskell-igraph)
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