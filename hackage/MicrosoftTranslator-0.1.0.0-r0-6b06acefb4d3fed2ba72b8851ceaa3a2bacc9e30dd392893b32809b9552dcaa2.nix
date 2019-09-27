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
      identifier = { name = "MicrosoftTranslator"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "neto@netowork.me";
      author = "Ernesto Rodriguez";
      homepage = "";
      url = "";
      synopsis = "Interface for Microsoft Translator";
      description = "A simple library to use Microsoft Translator\n(<https://www.microsoft.com/en-us/translator/default.aspx>) in Haskell.\nIt provides an easy to use interface to the free translation service from\nMicrosoft so one can easily add language translation to a Haskell program\nas long as there is internet connection available.\nThe easiest way to use the program is via the toplevel translate function:\n> translate :: ClientId -> ClientSecret -> Text -> BingLanguage -> BingLanguage -> IO (Either BingError Text)\nTo use this library one must have an account for Microsoft Translator in the\nAzure Data Market. More information about this package available at: (<https://github.com/netogallo/Microsoft-Translator-Haskell>).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."exceptions" or (buildDepError "exceptions"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."datetime" or (buildDepError "datetime"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."url" or (buildDepError "url"))
          (hsPkgs."xml" or (buildDepError "xml"))
          ];
        buildable = true;
        };
      };
    }