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
      identifier = { name = "heterocephalus"; version = "1.0.1.2"; };
      license = "MIT";
      copyright = "2016 Kadzuya Okamoto";
      maintainer = "arow.okamoto+github@gmail.com";
      author = "Kadzuya Okamoto";
      homepage = "https://github.com/arowM/heterocephalus#readme";
      url = "";
      synopsis = "A type-safe template engine for working with popular front end development tools";
      description = "Recent front end development tools and languages are growing fast and have\nquite a complicated ecosystem. Few front end developers want to be forced\nuse Shakespeare templates. Instead, they would rather use @node@ friendly\nengines such that @pug@, @slim@, and @haml@. However, in using these\ntemplate engines, we lose the compile-time variable interpolation and type\nchecking from Shakespeare.\n\nHeterocephalus is intended for use with another feature rich template\nengine and provides a way to interpolate server side variables into a\nprecompiled template file with @forall@ and @if@ statements.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."blaze-html" or (errorHandler.buildDepError "blaze-html"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."shakespeare" or (errorHandler.buildDepError "shakespeare"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "heterocephalus-test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."heterocephalus" or (errorHandler.buildDepError "heterocephalus"))
            ];
          buildable = true;
          };
        "doctest" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."Glob" or (errorHandler.buildDepError "Glob"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
            (hsPkgs."heterocephalus" or (errorHandler.buildDepError "heterocephalus"))
            ];
          buildable = true;
          };
        };
      };
    }