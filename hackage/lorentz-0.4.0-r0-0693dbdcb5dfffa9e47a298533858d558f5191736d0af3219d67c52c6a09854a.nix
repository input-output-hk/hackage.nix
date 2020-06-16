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
      specVersion = "2.2";
      identifier = { name = "lorentz"; version = "0.4.0"; };
      license = "MIT";
      copyright = "2019-2020 Tocqueville Group";
      maintainer = "Serokell <hi@serokell.io>";
      author = "camlCase, Serokell, Tocqueville Group";
      homepage = "https://gitlab.com/morley-framework/morley";
      url = "";
      synopsis = "EDSL for the Michelson Language";
      description = "Lorentz is a powerful meta-programming tool which allows one to write Michelson contracts directly in Haskell. It has the same instructions as Michelson, but operates on Haskell values and allows one to use Haskell features.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
          (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."data-default" or (errorHandler.buildDepError "data-default"))
          (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
          (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
          (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
          (hsPkgs."interpolate" or (errorHandler.buildDepError "interpolate"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."morley" or (errorHandler.buildDepError "morley"))
          (hsPkgs."morley-prelude" or (errorHandler.buildDepError "morley-prelude"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."named" or (errorHandler.buildDepError "named"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."pretty-terminal" or (errorHandler.buildDepError "pretty-terminal"))
          (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          ];
        buildable = true;
        };
      tests = {
        "lorentz-test" = {
          depends = [
            (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bimap" or (errorHandler.buildDepError "bimap"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."constraints" or (errorHandler.buildDepError "constraints"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."first-class-families" or (errorHandler.buildDepError "first-class-families"))
            (hsPkgs."fmt" or (errorHandler.buildDepError "fmt"))
            (hsPkgs."formatting" or (errorHandler.buildDepError "formatting"))
            (hsPkgs."hedgehog" or (errorHandler.buildDepError "hedgehog"))
            (hsPkgs."lorentz" or (errorHandler.buildDepError "lorentz"))
            (hsPkgs."morley" or (errorHandler.buildDepError "morley"))
            (hsPkgs."morley-prelude" or (errorHandler.buildDepError "morley-prelude"))
            (hsPkgs."singletons" or (errorHandler.buildDepError "singletons"))
            (hsPkgs."spoon" or (errorHandler.buildDepError "spoon"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-hedgehog" or (errorHandler.buildDepError "tasty-hedgehog"))
            (hsPkgs."tasty-hunit-compat" or (errorHandler.buildDepError "tasty-hunit-compat"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."type-spec" or (errorHandler.buildDepError "type-spec"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.tasty-discover or (pkgs.buildPackages.tasty-discover or (errorHandler.buildToolDepError "tasty-discover")))
            ];
          buildable = true;
          };
        };
      };
    }