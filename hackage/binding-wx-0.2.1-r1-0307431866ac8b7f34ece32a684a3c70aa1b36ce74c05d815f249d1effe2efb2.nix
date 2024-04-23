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
      identifier = { name = "binding-wx"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@accursoft.org";
      author = "Gideon Sireling";
      homepage = "https://bitbucket.org/accursoft/binding";
      url = "";
      synopsis = "Data Binding in WxHaskell";
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
      tests = {
        "simple" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."binding-core" or (errorHandler.buildDepError "binding-core"))
            (hsPkgs."binding-wx" or (errorHandler.buildDepError "binding-wx"))
          ];
          buildable = true;
        };
        "lists" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."wx" or (errorHandler.buildDepError "wx"))
            (hsPkgs."binding-core" or (errorHandler.buildDepError "binding-core"))
            (hsPkgs."binding-wx" or (errorHandler.buildDepError "binding-wx"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          ];
          buildable = true;
        };
      };
    };
  }