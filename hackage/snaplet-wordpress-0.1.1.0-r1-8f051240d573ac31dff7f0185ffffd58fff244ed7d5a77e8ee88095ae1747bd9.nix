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
      identifier = { name = "snaplet-wordpress"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dbp@dbpmail.net";
      author = "Daniel Patterson";
      homepage = "https://github.com/dbp/snaplet-wordpress";
      url = "";
      synopsis = "A snaplet that communicates with wordpress over its api.";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."hedis" or (buildDepError "hedis"))
          (hsPkgs."heist" or (buildDepError "heist"))
          (hsPkgs."map-syntax" or (buildDepError "map-syntax"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."snap" or (buildDepError "snap"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."snaplet-redis" or (buildDepError "snaplet-redis"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."configurator" or (buildDepError "configurator"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."xmlhtml" or (buildDepError "xmlhtml"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."hspec-snap" or (buildDepError "hspec-snap"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."either" or (buildDepError "either"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          ];
        };
      tests = {
        "test-snaplet-wordpress" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."heist" or (buildDepError "heist"))
            (hsPkgs."hspec-snap" or (buildDepError "hspec-snap"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."snap" or (buildDepError "snap"))
            (hsPkgs."snaplet-wordpress" or (buildDepError "snaplet-wordpress"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."snaplet-redis" or (buildDepError "snaplet-redis"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."xmlhtml" or (buildDepError "xmlhtml"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."either" or (buildDepError "either"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hedis" or (buildDepError "hedis"))
            ];
          };
        };
      };
    }