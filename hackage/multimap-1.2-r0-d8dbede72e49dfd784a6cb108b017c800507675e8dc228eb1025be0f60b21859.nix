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
      identifier = { name = "multimap"; version = "1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://hub.darcs.net/scravy/multimap";
      url = "";
      synopsis = "A multimap.";
      description = "This is a simple implementation of a multimap, based on \"Data.Map\".\n\n[@v1.1@]\n@!@ had its arguments flipped. Fixed.\nAlso added @fromMap@.\n\n[@v1.2]\nAdded \"Data.SetMap\", renamed @Multimap@ to \"Data.MultiMap\".\nFixed the type of @delete@. Derive instances for @Data@\nand @Typeable@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }