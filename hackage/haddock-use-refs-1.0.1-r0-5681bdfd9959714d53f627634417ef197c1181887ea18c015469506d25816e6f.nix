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
      specVersion = "3.0";
      identifier = { name = "haddock-use-refs"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Daniil Iaitskov <dyaitskov@gmail.com>";
      author = "Daniil Iaitskov <dyaitskov@gmail.com>";
      homepage = "https://github.com/yaitskov/haddock-use-refs";
      url = "";
      synopsis = "Eliminate warnings for names referred in Haddock only";
      description = "Haddock syntax supports\n<https://haskell-haddock.readthedocs.io/latest/markup.html#hyperlinked-identifiers hyper links>\nto functions and types mentioned in comments (an identifier enclosed in\nsingle quotes). The link is inserted only if the name is fully qualified\nor imported in the module. Names referred only in module documentation\npose a problem in form of compiler warning about unused imports.\n\nThis library helps with resolving these warnings authomatically without\ndisabling all warnings of such type via a TH macro\n<https://hackage.haskell.org/package/haddock-use-refs/docs/Haddock-UseRefs.html#v:countDocRefs countDockRefs>,\nwhich discovers all names in module documentation and generates a dummy\ntype with an instance\n<https://hackage.haskell.org/package/haddock-use-refs/docs/Haddock-UseRefs.html#t:CountHaddockRefs CountHaddockRefs>\nusing all names in the method.\n\n> {-# OPTIONS_GHC -Wall -Werror #-}\n> {-# LANGUAGE TemplateHaskell #-}\n> module Module where\n>\n> import Haddock.UseRefs\n> import System.IO.Unsafe (unsafePerformIO)\n>\n> countDocRefs\n>\n> -- | 'unsafePerformIO' is not used by 'foo'.\n> foo :: Bool\n> foo = True\n\nThe library does not require any configuration.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."cpphs" or (errorHandler.buildDepError "cpphs"))
          (hsPkgs."haddock-library" or (errorHandler.buildDepError "haddock-library"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
            (hsPkgs."haddock-use-refs" or (errorHandler.buildDepError "haddock-use-refs"))
          ];
          buildable = true;
        };
      };
    };
  }