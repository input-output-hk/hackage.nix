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
      identifier = { name = "tracy"; version = "0.1.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "denis.redozubov@gmail.com";
      author = "Denis Redozubov";
      homepage = "";
      url = "";
      synopsis = "Convenience wrappers for non-intrusive debug tracing";
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