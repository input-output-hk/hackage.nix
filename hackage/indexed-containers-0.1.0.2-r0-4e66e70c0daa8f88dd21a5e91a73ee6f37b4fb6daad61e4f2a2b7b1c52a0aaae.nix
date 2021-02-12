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
      specVersion = "2.4";
      identifier = { name = "indexed-containers"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Ziyang Liu";
      maintainer = "Ziyang Liu <free@cofree.io>";
      author = "Ziyang Liu <free@cofree.io>";
      homepage = "https://github.com/zliu41/indexed-containers";
      url = "";
      synopsis = "Simple, no-frills indexed lists.";
      description = "If the lengths of your lists are known statically, using indexed lists improves type safety with no runtime overhead.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      tests = {
        "hspec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."indexed-containers" or (errorHandler.buildDepError "indexed-containers"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
            ];
          buildable = true;
          };
        };
      };
    }