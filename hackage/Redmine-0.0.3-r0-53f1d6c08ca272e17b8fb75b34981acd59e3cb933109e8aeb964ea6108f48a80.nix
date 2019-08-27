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
      identifier = { name = "Redmine"; version = "0.0.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "charles.stpierre@gmail.com";
      author = "Charles St-Pierre";
      homepage = "https://github.com/lookunder/RedmineHs";
      url = "";
      synopsis = "Library to access Redmine's REST services";
      description = "Library to access Redmine's REST services";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."old-locale" or (buildDepError "old-locale"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."old-time" or (buildDepError "old-time"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."HTTP" or (buildDepError "HTTP"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."resourcet" or (buildDepError "resourcet"))
          (hsPkgs."connection" or (buildDepError "connection"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          ];
        };
      tests = {
        "test-Redmine" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."HUnit" or (buildDepError "HUnit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."resourcet" or (buildDepError "resourcet"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."old-locale" or (buildDepError "old-locale"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."connection" or (buildDepError "connection"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."containers" or (buildDepError "containers"))
            ];
          };
        };
      };
    }