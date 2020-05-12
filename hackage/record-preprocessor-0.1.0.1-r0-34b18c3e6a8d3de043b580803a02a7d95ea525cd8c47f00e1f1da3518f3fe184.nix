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
      identifier = { name = "record-preprocessor"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "(c) 2015, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/record-preprocessor ";
      url = "";
      synopsis = "Compiler preprocessor introducing a syntactic extension for anonymous records";
      description = "This package provides an executable \"record-preprocessor\",\nwhich can be used as a compilation phase to add support for\nthe Anynonymous Records syntax.\n\nTo get a look at what syntax the preprocessor enables check out\n<http://hackage.haskell.org/package/record-preprocessor-0.1.0.1/src/demo/Main.hs the demo> and\n<http://hackage.haskell.org/package/record-preprocessor-0.1.0.1/src/record-preprocessor.cabal its configuration in the Cabal file>,\nwhich are both bundled with this package.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "record-preprocessor" = {
          depends = [
            (hsPkgs."record-syntax" or (errorHandler.buildDepError "record-syntax"))
            (hsPkgs."conversion" or (errorHandler.buildDepError "conversion"))
            (hsPkgs."conversion-text" or (errorHandler.buildDepError "conversion-text"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."base-prelude" or (errorHandler.buildDepError "base-prelude"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "demo" = {
          depends = [
            (hsPkgs."record" or (errorHandler.buildDepError "record"))
            (hsPkgs."basic-lens" or (errorHandler.buildDepError "basic-lens"))
            ];
          buildable = true;
          };
        };
      };
    }