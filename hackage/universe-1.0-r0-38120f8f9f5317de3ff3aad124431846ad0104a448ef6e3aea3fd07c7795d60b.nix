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
      identifier = { name = "universe"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2014";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "Classes for types where we know all the values";
      description = "Munge finite and recursively enumerable types";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."universe-instances-base" or (errorHandler.buildDepError "universe-instances-base"))
          (hsPkgs."universe-instances-extended" or (errorHandler.buildDepError "universe-instances-extended"))
          (hsPkgs."universe-reverse-instances" or (errorHandler.buildDepError "universe-reverse-instances"))
          (hsPkgs."universe-instances-trans" or (errorHandler.buildDepError "universe-instances-trans"))
          ];
        buildable = true;
        };
      };
    }