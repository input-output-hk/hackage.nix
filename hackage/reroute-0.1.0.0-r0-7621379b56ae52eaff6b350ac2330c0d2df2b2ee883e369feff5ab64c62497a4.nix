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
      identifier = { name = "reroute"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(c) 2014 Alexander Thiemann <mail@agrafix.net>, Tim Baumann <tim@timbaumann.info>";
      maintainer = "mail@agrafix.net";
      author = "Alexander Thiemann <mail@agrafix.net>, Tim Baumann <tim@timbaumann.info>";
      homepage = "http://github.com/agrafix/reroute";
      url = "";
      synopsis = "abstract implementation of typed and untyped web routing";
      description = "abstraction over how urls with/without parameters are mapped to their corresponding handlers";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."HList" or (buildDepError "HList"))
          (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."path-pieces" or (buildDepError "path-pieces"))
          (hsPkgs."hspec2" or (buildDepError "hspec2"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "reroutetest" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."HList" or (buildDepError "HList"))
            (hsPkgs."regex-compat" or (buildDepError "regex-compat"))
            (hsPkgs."hashable" or (buildDepError "hashable"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."path-pieces" or (buildDepError "path-pieces"))
            (hsPkgs."hspec2" or (buildDepError "hspec2"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }