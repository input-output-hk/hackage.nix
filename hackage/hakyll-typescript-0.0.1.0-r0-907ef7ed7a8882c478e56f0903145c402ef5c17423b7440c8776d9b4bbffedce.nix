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
      identifier = { name = "hakyll-typescript"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Jim McStanton";
      maintainer = "jim@jhmcstanton.com";
      author = "Jim McStanton";
      homepage = "https://github.com/jhmcstanton/hakyll-typescript#readme";
      url = "";
      synopsis = "Typescript and javascript hakyll compilers.";
      description = "Provides typescript to javascript hakyll compilers and a\njs minifying hakyll compiler. This is a simple wrapper\naround other common utilities found in hakyll projects,\nparticularly `hjsmin`.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
          (hsPkgs."hjsmin" or (errorHandler.buildDepError "hjsmin"))
          (hsPkgs."typed-process" or (errorHandler.buildDepError "typed-process"))
          ];
        buildable = true;
        };
      tests = {
        "test-hakyll-typescript" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."hakyll" or (errorHandler.buildDepError "hakyll"))
            (hsPkgs."hakyll-typescript" or (errorHandler.buildDepError "hakyll-typescript"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            ];
          buildable = true;
          };
        };
      };
    }