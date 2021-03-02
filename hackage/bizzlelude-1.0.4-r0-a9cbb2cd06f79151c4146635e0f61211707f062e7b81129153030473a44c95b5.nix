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
      specVersion = "1.22";
      identifier = { name = "bizzlelude"; version = "1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jason.bertsche@gmail.com";
      author = "Jason Bertsche";
      homepage = "http://github.com/TheBizzle";
      url = "";
      synopsis = "A lousy Prelude replacement by a lousy dude";
      description = "A lousy Prelude replacement by a lousy dude.  Imports common things while trying to avoid importing things could cause naming conflicts.  Favors `Text` over `String`.  Wants using `IO` to be painful.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }