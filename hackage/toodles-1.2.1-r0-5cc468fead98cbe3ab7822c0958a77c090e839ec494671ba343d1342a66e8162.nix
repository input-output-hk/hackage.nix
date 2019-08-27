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
      specVersion = "1.12";
      identifier = { name = "toodles"; version = "1.2.1"; };
      license = "MIT";
      copyright = "2019 Avi Press";
      maintainer = "mail@avi.press";
      author = "Avi Press";
      homepage = "https://github.com/aviaviavi/toodles#readme";
      url = "";
      synopsis = "Manage the TODO entries in your code";
      description = "Toodles scrapes your entire repository for TODO entries and organizes them so you can manage your project directly from the code. View, filter, sort, and edit your TODO\\'s with an easy to use web application. When you make changes via toodles, the edits will be applied directly the TODO entries in your code. When you\\'re done, commit and push your changes to share them with your team!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."RSA" or (buildDepError "RSA"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."process" or (buildDepError "process"))
          (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
          (hsPkgs."servant" or (buildDepError "servant"))
          (hsPkgs."servant-blaze" or (buildDepError "servant-blaze"))
          (hsPkgs."servant-server" or (buildDepError "servant-server"))
          (hsPkgs."strict" or (buildDepError "strict"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."warp" or (buildDepError "warp"))
          (hsPkgs."yaml" or (buildDepError "yaml"))
          ];
        };
      exes = {
        "toodles" = {
          depends = [
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."RSA" or (buildDepError "RSA"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-blaze" or (buildDepError "servant-blaze"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        };
      tests = {
        "toodles-test" = {
          depends = [
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."hspec-expectations" or (buildDepError "hspec-expectations"))
            (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."servant" or (buildDepError "servant"))
            (hsPkgs."servant-blaze" or (buildDepError "servant-blaze"))
            (hsPkgs."servant-server" or (buildDepError "servant-server"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."toodles" or (buildDepError "toodles"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."yaml" or (buildDepError "yaml"))
            ];
          };
        };
      };
    }