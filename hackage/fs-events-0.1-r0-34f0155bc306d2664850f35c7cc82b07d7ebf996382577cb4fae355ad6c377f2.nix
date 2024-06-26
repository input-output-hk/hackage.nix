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
      specVersion = "1.8";
      identifier = { name = "fs-events"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2012, Nick Partridge";
      maintainer = "nkpart@gmail.com";
      author = "Nick Partridge";
      homepage = "http://github.com/nkpart/fs-events";
      url = "";
      synopsis = "A haskell binding to the FSEvents API";
      description = "A haskell binding to the FSEvents API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        frameworks = [
          (pkgs."CoreServices" or (errorHandler.sysDepError "CoreServices"))
        ];
        buildable = true;
      };
    };
  }