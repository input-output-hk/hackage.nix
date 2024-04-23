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
      specVersion = "1.12";
      identifier = { name = "stack-templatizer"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/stack-templatizer#readme";
      url = "";
      synopsis = "Generate a stack template from a folder.";
      description = "@stack-templatizer@ is an application that generates a @.hsfiles@ stack\ntemplate from a folder of template files.\n\nYou can install the application using @stack install stack-templatizer\ninstall@";
      buildType = "Simple";
    };
    components = {
      exes = {
        "stack-templatizer" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          ];
          buildable = true;
        };
      };
    };
  }