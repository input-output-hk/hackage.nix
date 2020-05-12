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
      identifier = { name = "userid"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://www.github.com/Happstack/userid";
      url = "";
      synopsis = "A library which provides the UserId type and useful instances for web development";
      description = "Includes instances for SafeCopy, Lens, Boomerang, PathInfo and more";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."boomerang" or (errorHandler.buildDepError "boomerang"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."web-routes" or (errorHandler.buildDepError "web-routes"))
          (hsPkgs."web-routes-th" or (errorHandler.buildDepError "web-routes-th"))
          ];
        buildable = true;
        };
      };
    }