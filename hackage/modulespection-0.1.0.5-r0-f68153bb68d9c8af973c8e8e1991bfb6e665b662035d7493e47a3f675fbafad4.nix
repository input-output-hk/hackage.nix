let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "modulespection"; version = "0.1.0.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jonathangfischoff@gmail.com";
      author = "Jonathan Fischoff";
      homepage = "https://github.com/jfischoff/modulespection";
      url = "";
      synopsis = "Template Haskell for introspecting a module's declarations";
      description = "Collect all of the declarations in a module using Template Haskell (via the GHC API).\n\nOne can either get all the names, or just the declarations (only type declarations\nare supported right now).\n\nHere is a quick example:\n\n> import Language.Haskell.TH.Module.Magic (names)\n>\n> data Test = Test Int\n> newtype OtherTest = OtherTest Test\n>\n> someFunction :: String -> String\n> someFunction = id\n>\n> -- 'names' is Template Haskell function that will collect all of the\n> -- toplevel declaration names of the current file.\n> names >>= runIO . print >> return []\n\nWhich will spew the following when compiling:\n\n> [Test,OtherTest,someFunction]\n\nThere is also 'declarations' which can be used, for example, to make sure that all\ntypes have @ToJSON@/@FromJSON@ instances.\n\n> import Data.Aeson.TH (deriveJSON, defaultOptions)\n> import MonadUtils (concatMapM)\n> import Language.Haskell.TH.Module.Magic (names)\n>\n> data Test = Test Int\n> newtype OtherTest = OtherTest Test\n>\n> concatMapM (deriveJSON defaultOptions) =<< declarations\n\nWhich will make JSON instances for Test, OtherTest and any other types\nadded to the file.\n\nYou can also do the same thing for an existing module.\n\n> import Data.Aeson.TH (deriveJSON, defaultOptions)\n> import MonadUtils (concatMapM)\n> import Language.Haskell.TH.Module.Magic (names)\n> import Data.Monoid\n>\n> concatMapM (deriveJSON defaultOptions) =<< moduleDeclarations \"Data.Monoid\"\n\nWhich will build instances for all the types in \"Data.Monoid\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."ghc-paths" or (buildDepError "ghc-paths"))
          (hsPkgs."ghc" or (buildDepError "ghc"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          ];
        };
      };
    }