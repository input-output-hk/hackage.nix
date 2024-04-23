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
    flags = { base-4-9 = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "generic-deriving"; version = "1.14.3"; };
      license = "BSD-3-Clause";
      copyright = "2011-2013 Universiteit Utrecht, University of Oxford";
      maintainer = "generics@haskell.org";
      author = "José Pedro Magalhães";
      homepage = "https://github.com/dreixel/generic-deriving";
      url = "";
      synopsis = "Generic programming library for generalised deriving.";
      description = "This package provides functionality for generalising the deriving mechanism\nin Haskell to arbitrary classes. It was first described in the paper:\n\n*  /A generic deriving mechanism for Haskell/.\nJose Pedro Magalhaes, Atze Dijkstra, Johan Jeuring, and Andres Loeh.\nHaskell'10.\n\nThe current implementation integrates with the new GHC Generics. See\n<http://www.haskell.org/haskellwiki/GHC.Generics> for more information.\nTemplate Haskell code is provided for supporting older GHCs.\n\nThis library is organized as follows:\n\n* \"Generics.Deriving.Base\" defines the core functionality for GHC generics,\nincluding the @Generic(1)@ classes and representation data types.\nOn modern versions of GHC, this simply re-exports \"GHC.Generics\" from\n@base@. On older versions of GHC, this module backports parts of\n\"GHC.Generics\" that were not included at the time, including @Generic(1)@\ninstances.\n\n* \"Generics.Deriving.TH\" implements Template Haskell functionality for\nderiving instances of @Generic(1)@.\n\n* Educational code: in order to provide examples of how to define and use\n\"GHC.Generics\"-based defaults, this library offers a number of modules\nwhich define examples of type classes along with default implementations\nfor the classes' methods. Currently, the following modules are provided:\n\"Generics.Deriving.Copoint\", \"Generics.Deriving.ConNames\",\n\"Generics.Deriving.Enum\", \"Generics.Deriving.Eq\",\n\"Generics.Deriving.Foldable\", \"Generics.Deriving.Functor\",\n\"Generics.Deriving.Monoid\", \"Generics.Deriving.Semigroup\",\n\"Generics.Deriving.Show\", \"Generics.Deriving.Traversable\",\nand \"Generics.Deriving.Uniplate\".\n\nIt is worth emphasizing that these modules are primarly intended for\neducational purposes. Many of the classes in these modules resemble other\ncommonly used classes—for example, @GShow@ from \"Generics.Deriving.Show\"\nresembles @Show@ from @base@—but in general, the classes that\n@generic-deriving@ defines are not drop-in replacements. Moreover, the\ngeneric defaults that @generic-deriving@ provide often make simplifying\nassumptions that may violate expectations of how these classes might work\nelsewhere. For example, the generic default for @GShow@ does not behave\nexactly like @deriving Show@ would.\n\nIf you are seeking \"GHC.Generics\"-based defaults for type classes in\n@base@, consider using the\n@<http://hackage.haskell.org/package/generic-data generic-data>@ library.\n\n* \"Generics.Deriving.Default\" provides newtypes that allow leveraging the\ngeneric defaults in this library using the @DerivingVia@ GHC language\nextension.\n\n* \"Generics.Deriving\" re-exports \"Generics.Deriving.Base\",\n\"Generics.Deriving.Default\", and a selection of educational modules.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."ghc-prim" or (errorHandler.buildDepError "ghc-prim"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."th-abstraction" or (errorHandler.buildDepError "th-abstraction"))
        ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))
            (hsPkgs."hspec" or (errorHandler.buildDepError "hspec"))
            (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover.components.exes.hspec-discover or (pkgs.buildPackages.hspec-discover or (errorHandler.buildToolDepError "hspec-discover:hspec-discover")))
          ];
          buildable = true;
        };
      };
    };
  }