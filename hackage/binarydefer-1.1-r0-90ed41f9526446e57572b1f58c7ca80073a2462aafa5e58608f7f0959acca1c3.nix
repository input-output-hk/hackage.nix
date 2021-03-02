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
      specVersion = "1.0";
      identifier = { name = "binarydefer"; version = "1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Neil Mitchell";
      homepage = "";
      url = "";
      synopsis = "Binary serialization with deferred loading";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }