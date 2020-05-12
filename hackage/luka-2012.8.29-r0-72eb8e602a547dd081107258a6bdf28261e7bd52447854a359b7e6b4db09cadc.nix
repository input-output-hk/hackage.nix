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
      identifier = { name = "luka"; version = "2012.8.29"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jinjing Wang";
      author = "Jinjing Wang";
      homepage = "https://github.com/nfjinjing/luka";
      url = "";
      synopsis = "Simple ObjectiveC runtime binding";
      description = "Simple ObjectiveC runtime binding";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."air" or (errorHandler.buildDepError "air"))
          (hsPkgs."libffi" or (errorHandler.buildDepError "libffi"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ];
        libs = [ (pkgs."objc" or (errorHandler.sysDepError "objc")) ];
        buildable = true;
        };
      };
    }