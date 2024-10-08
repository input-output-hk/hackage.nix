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
      identifier = { name = "cookbook"; version = "2.3.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nathanpisarski@gmail.com";
      author = "Nate Pisarski";
      homepage = "";
      url = "";
      synopsis = "Tiered general-purpose libraries with domain-specific applications.";
      description = "Cookbook is a line of libraries covering a wide variety of Haskell applications. Every application that I make, I add its functions to Cookbook, turning Cookbook into an all-encompassing general-purpose library over time. The claim-to-fame for the library is its use of overloaded typeclasses, called \"Continuities\". ";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
          (hsPkgs."strict" or (errorHandler.buildDepError "strict"))
        ];
        buildable = true;
      };
    };
  }