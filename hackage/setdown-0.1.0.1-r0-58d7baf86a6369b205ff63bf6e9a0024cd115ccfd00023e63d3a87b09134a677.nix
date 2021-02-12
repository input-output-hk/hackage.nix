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
      identifier = { name = "setdown"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Robert Massaioli";
      maintainer = "robertmassaioli@gmail.com";
      author = "Robert Massaioli";
      homepage = "http://bitbucket.org/robertmassaioli/setdown";
      url = "";
      synopsis = "Treating files as sets to perform rapid set manipulation.";
      description = "There will be times when you have lots of set data and you want to perform many\nset operations quickly and reliably, you will also want to be able to add new\ndata to your set operations and be able to run the same set operations with\nlittle effort. This is the problem that setdown aims to solve. Setdown was\nbuilt with the intention that you would use it in conjunction with version\ncontrol tools to manage your set data and set description file.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "setdown" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."uuid" or (errorHandler.buildDepError "uuid"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.alex.components.exes.alex or (pkgs.buildPackages.alex or (errorHandler.buildToolDepError "alex:alex")))
            (hsPkgs.buildPackages.happy.components.exes.happy or (pkgs.buildPackages.happy or (errorHandler.buildToolDepError "happy:happy")))
            ];
          buildable = true;
          };
        };
      };
    }