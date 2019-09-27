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
      specVersion = "1.8";
      identifier = { name = "rdioh"; version = "0.2.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Aditya Bhargava <adit at adit.io>";
      author = "Aditya Bhargava";
      homepage = "";
      url = "";
      synopsis = "A Haskell wrapper for Rdio's API.";
      description = "This library implements methods for Rdio's API.\nIt supports 2-legged and 3-legged OAuth. See Rdio's API for reference: http:\\/\\/developer.rdio.com\\/docs\\/read\\/rest\\/Methods";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."MissingH" or (buildDepError "MissingH"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."hoauth" or (buildDepError "hoauth"))
          (hsPkgs."urlencoded" or (buildDepError "urlencoded"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "rdioh" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."hoauth" or (buildDepError "hoauth"))
            (hsPkgs."urlencoded" or (buildDepError "urlencoded"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        "rdioh-spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."rdioh" or (buildDepError "rdioh"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."MissingH" or (buildDepError "MissingH"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."hoauth" or (buildDepError "hoauth"))
            (hsPkgs."urlencoded" or (buildDepError "urlencoded"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }