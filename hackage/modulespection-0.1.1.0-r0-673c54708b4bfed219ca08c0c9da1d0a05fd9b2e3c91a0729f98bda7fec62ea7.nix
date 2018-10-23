{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "modulespection";
        version = "0.1.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/modulespection";
      url = "";
      synopsis = "Template Haskell for introspecting a module's declarations";
      description = "Collect all of the declarations in a module using Template Haskell (via the GHC API).\n\nOne can either get all the names, or just the declarations (only type declarations\nare supported right now).\n\nHere is a quick example:\n\n> import Language.Haskell.TH.Module.Magic (names)\n>\n> data Test = Test Int\n> newtype OtherTest = OtherTest Test\n>\n> someFunction :: String -> String\n> someFunction = id\n>\n> -- 'names' is Template Haskell function that will collect all of the\n> -- toplevel declaration names of the current file.\n> names >>= runIO . print >> return []\n\nWhich will spew the following when compiling:\n\n> [Test,OtherTest,someFunction]\n\nThere is also 'declarations' which can be used, for example, to make sure that all\ntypes have @ToJSON@/@FromJSON@ instances.\n\n> import Data.Aeson.TH (deriveJSON, defaultOptions)\n> import MonadUtils (concatMapM)\n> import Language.Haskell.TH.Module.Magic (declarations)\n>\n> data Test = Test Int\n> newtype OtherTest = OtherTest Test\n>\n> concatMapM (deriveJSON defaultOptions) =<< declarations\n\nWhich will make JSON instances for Test, OtherTest and any other types\nadded to the file.\n\nYou can also do the same thing for an existing module.\n\n> import Data.Aeson.TH (deriveJSON, defaultOptions)\n> import MonadUtils (concatMapM)\n> import Language.Haskell.TH.Module.Magic (moduleDeclarations)\n> import Data.Monoid\n>\n> concatMapM (deriveJSON defaultOptions) =<< moduleDeclarations \"Data.Monoid\"\n\nWhich will build instances for all the types in \"Data.Monoid\".";
      buildType = "Simple";
    };
    components = {
      "modulespection" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.ghc-paths)
          (hsPkgs.ghc)
          (hsPkgs.temporary)
          (hsPkgs.exceptions)
          (hsPkgs.transformers)
          (hsPkgs.filepath)
        ];
      };
    };
  }