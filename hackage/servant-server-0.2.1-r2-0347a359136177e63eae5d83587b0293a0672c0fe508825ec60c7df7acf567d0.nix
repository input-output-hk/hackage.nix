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
      identifier = { name = "servant-server"; version = "0.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 Zalora South East Asia Pte Ltd";
      maintainer = "alpmestan@gmail.com";
      author = "Alp Mestanogullari, Sönke Hahn, Julian K. Arni";
      homepage = "http://haskell-servant.github.io/";
      url = "";
      synopsis = "A family of combinators for defining webservices APIs and serving them";
      description = "A family of combinators for defining webservices APIs and serving them\n\nYou can learn about the basics in <http://haskell-servant.github.io/getting-started/ the getting started> guide.\n\n<https://github.com/haskell-servant/servant-server/blob/master/example/greet.hs Here>'s a runnable example, with comments, that defines a dummy API and\nimplements a webserver that serves this API, using this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
          (hsPkgs."system-filepath" or (buildDepError "system-filepath"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-app-static" or (buildDepError "wai-app-static"))
          (hsPkgs."warp" or (buildDepError "warp"))
          ];
        };
      exes = {
        "greet" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          };
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."exceptions" or (buildDepError "exceptions"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-wai" or (buildDepError "hspec-wai"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."string-conversions" or (buildDepError "string-conversions"))
            (hsPkgs."temporary" or (buildDepError "temporary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."wai-extra" or (buildDepError "wai-extra"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          };
        };
      };
    }