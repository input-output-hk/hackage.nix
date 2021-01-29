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
      specVersion = "1.12";
      identifier = { name = "named-servant"; version = "0.3.0"; };
      license = "BSD-3-Clause";
      copyright = "Kristof Bastiaensen 2020";
      maintainer = "kristof@resonata.be";
      author = "";
      homepage = "";
      url = "";
      synopsis = "support records and named (from the named package) parameters in servant";
      description = "Having positional parameters in Servant can be error prone, especially if you have lot of them, and they have similar types.  This package solves that problem by either using records or named parameters (from the named package) to specify servant parameters.  To use with servers, use the /named-servant-server/ package, with clients use /named-servant-client/.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."servant" or (errorHandler.buildDepError "servant"))
          (hsPkgs."named" or (errorHandler.buildDepError "named"))
          ];
        buildable = true;
        };
      };
    }