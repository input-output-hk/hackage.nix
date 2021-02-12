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
      specVersion = "1.10";
      identifier = { name = "redland"; version = "0.2.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "defanor@uberspace.net";
      author = "defanor";
      homepage = "";
      url = "";
      synopsis = "Redland RDF library bindings";
      description = "This package provides low-level and mid-level\nRedland RDF library bindings, as well as some\nutility functions. The bindings are not complete\nin this version, though many functions are\npresent.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          ];
        pkgconfig = [
          (pkgconfPkgs."raptor2" or (errorHandler.pkgConfDepError "raptor2"))
          (pkgconfPkgs."redland" or (errorHandler.pkgConfDepError "redland"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs.components.exes.hsc2hs or (pkgs.buildPackages.hsc2hs or (errorHandler.buildToolDepError "hsc2hs:hsc2hs")))
          ];
        buildable = true;
        };
      };
    }