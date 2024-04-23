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
      identifier = { name = "stack-templatizer"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2020 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/stack-templatizer#readme";
      url = "";
      synopsis = "Generate a stack template from a folder.";
      description = "@stack-templatizer@ is an application that generates a @.hsfiles@ stack\ntemplate from a folder of template files.\n\nYou can install the application using @stack install\nstack-templatizer --resolver nightly@ or by cloning the repository and\nrunning @stack install@.\n\nThen run @stack-templatizer my-folder@ to turn all the files in @my-folder@\ninto a @my-folder.hsfiles@ stack template.\n\nYou can see an example folder & the generated @hs-files@ in the\n<https://github.com/prikhi/hpack-template hpack template repository>.";
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