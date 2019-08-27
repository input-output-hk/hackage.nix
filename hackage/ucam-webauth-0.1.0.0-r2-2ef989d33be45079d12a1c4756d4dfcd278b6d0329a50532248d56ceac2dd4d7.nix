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
    flags = { dev = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "ucam-webauth"; version = "0.1.0.0"; };
      license = "(BSD-3-Clause OR Apache-2.0)";
      copyright = "2018 David Baynard";
      maintainer = "David Baynard <ucamwebauth@baynard.me>";
      author = "David Baynard <ucamwebauth@baynard.me>";
      homepage = "https://github.com/dbaynard/UcamWebauth#readme";
      url = "";
      synopsis = "The Ucam-Webauth protocol, used by Raven";
      description = "An implementation of the Ucam-Webauth protocol, as used by the University of Cambridge’s\nRaven authentication service.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
          (hsPkgs."errors" or (buildDepError "errors"))
          (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."microlens" or (buildDepError "microlens"))
          (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."pem" or (buildDepError "pem"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."ucam-webauth-types" or (buildDepError "ucam-webauth-types"))
          (hsPkgs."x509" or (buildDepError "x509"))
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."cryptonite" or (buildDepError "cryptonite"))
            (hsPkgs."errors" or (buildDepError "errors"))
            (hsPkgs."generic-random" or (buildDepError "generic-random"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."http-api-data" or (buildDepError "http-api-data"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."microlens" or (buildDepError "microlens"))
            (hsPkgs."microlens-mtl" or (buildDepError "microlens-mtl"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
            (hsPkgs."pem" or (buildDepError "pem"))
            (hsPkgs."quickcheck-instances" or (buildDepError "quickcheck-instances"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."time-qq" or (buildDepError "time-qq"))
            (hsPkgs."ucam-webauth-types" or (buildDepError "ucam-webauth-types"))
            (hsPkgs."x509" or (buildDepError "x509"))
            ];
          build-tools = [
            (hsPkgs.buildPackages.hspec-discover or (pkgs.buildPackages.hspec-discover or (buildToolDepError "hspec-discover")))
            ];
          };
        };
      };
    }