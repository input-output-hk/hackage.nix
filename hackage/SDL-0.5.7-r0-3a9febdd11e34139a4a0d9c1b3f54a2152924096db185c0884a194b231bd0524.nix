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
      identifier = { name = "SDL"; version = "0.5.7"; };
      license = "BSD-3-Clause";
      copyright = "2004-2009, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libSDL";
      description = "";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."SDL" or (errorHandler.sysDepError "SDL")) ];
        frameworks = [ (pkgs."AppKit" or (errorHandler.sysDepError "AppKit")) ];
        buildable = true;
      };
    };
  }