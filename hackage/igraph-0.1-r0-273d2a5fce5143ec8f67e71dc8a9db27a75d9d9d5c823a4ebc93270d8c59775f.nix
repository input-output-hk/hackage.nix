{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "igraph"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Giorgidze@Gmail.com";
      author = "Nils Schweinsberg, George Giorgidze";
      homepage = "";
      url = "";
      synopsis = "Bindings to the igraph C library.";
      description = "Complete bindings to all functions about graph properties\nof the igraph C library. Requires igraph 0.6.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
        ];
        libs = [ (pkgs."igraph" or (errorHandler.sysDepError "igraph")) ];
        build-tools = [
          (hsPkgs.buildPackages.c2hs.components.exes.c2hs or (pkgs.buildPackages.c2hs or (errorHandler.buildToolDepError "c2hs:c2hs")))
        ];
        buildable = true;
      };
    };
  }