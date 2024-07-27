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
      identifier = { name = "language-python"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2008-2009 Bernard James Pope";
      maintainer = "bjpop@csse.unimelb.edu.au";
      author = "Bernard James Pope ";
      homepage = "http://projects.haskell.org/language-python/";
      url = "";
      synopsis = "Parsing and pretty printing of Python code. ";
      description = "language-python is a Haskell library for parsing and pretty printing\nPython code. Currently it only supports Python version 3.0.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
        ];
        build-tools = [
          (hsPkgs.pkgsBuildBuild.happy.components.exes.happy or (pkgs.pkgsBuildBuild.happy or (errorHandler.buildToolDepError "happy:happy")))
          (hsPkgs.pkgsBuildBuild.alex.components.exes.alex or (pkgs.pkgsBuildBuild.alex or (errorHandler.buildToolDepError "alex:alex")))
        ];
        buildable = true;
      };
    };
  }