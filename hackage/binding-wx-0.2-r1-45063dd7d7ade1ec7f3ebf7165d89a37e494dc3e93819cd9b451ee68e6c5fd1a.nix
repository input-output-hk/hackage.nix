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
      specVersion = "1.6";
      identifier = { name = "binding-wx"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@accursoft.org";
      author = "Gideon Sireling";
      homepage = "https://bitbucket.org/accursoft/binding";
      url = "";
      synopsis = "binding-core wrapper for WxHaskell";
      description = "Bind mutable data and lists to WxHaskell widgets.\nExamples are provided by the included demo programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."wxcore" or (errorHandler.buildDepError "wxcore"))
          (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
          (hsPkgs."binding-core" or (errorHandler.buildDepError "binding-core"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }