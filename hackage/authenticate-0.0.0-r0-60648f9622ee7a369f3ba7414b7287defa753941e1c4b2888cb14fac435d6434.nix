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
      specVersion = "1.2";
      identifier = { name = "authenticate"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Michael Snoyman <michael@snoyman.com>";
      author = "Michael Snoyman <michael@snoyman.com>";
      homepage = "http://github.com/snoyberg/authenticate/tree/master";
      url = "";
      synopsis = "Authentication methods for Haskell web applications.";
      description = "Focus is on remote authentication methods, such as OpenID,\nrpxnow and Google.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."json" or (errorHandler.buildDepError "json"))
          (hsPkgs."http-wget" or (errorHandler.buildDepError "http-wget"))
          (hsPkgs."tagsoup" or (errorHandler.buildDepError "tagsoup"))
          ];
        buildable = true;
        };
      };
    }