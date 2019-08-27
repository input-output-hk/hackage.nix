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
      identifier = { name = "latest-npm-version"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "phartig@rdrei.net";
      author = "Pascal Hartig";
      homepage = "https://github.com/passy/latest-npm-version";
      url = "";
      synopsis = "Find the latest version of a package on npm";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."pipes-http" or (buildDepError "pipes-http"))
          (hsPkgs."pipes" or (buildDepError "pipes"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          ];
        };
      exes = {
        "latest-npm-version" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."pipes-http" or (buildDepError "pipes-http"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-format" or (buildDepError "text-format"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            ];
          };
        };
      tests = {
        "hspec-tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."pipes-http" or (buildDepError "pipes-http"))
            (hsPkgs."pipes" or (buildDepError "pipes"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-format" or (buildDepError "text-format"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pipes-bytestring" or (buildDepError "pipes-bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."pipes-attoparsec" or (buildDepError "pipes-attoparsec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."lens" or (buildDepError "lens"))
            ];
          };
        };
      };
    }