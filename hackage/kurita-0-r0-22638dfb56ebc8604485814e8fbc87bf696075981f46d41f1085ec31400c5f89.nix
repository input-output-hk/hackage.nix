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
      specVersion = "2.4";
      identifier = { name = "kurita"; version = "0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2019 davean; additionally twimoji by Twitter, Inc and other contributors is licensed under CC-BY 4.0";
      maintainer = "oss@xkcd.com";
      author = "davean";
      homepage = "https://oss.xkcd.com/";
      url = "";
      synopsis = "Find the alpha emoji";
      description = "A system for pitting each against the others and finding the greatest.\n\nFor an example, see <https://xkcd.com/2131/ Emojidome>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."approximate" or (buildDepError "approximate"))
          (hsPkgs."async" or (buildDepError "async"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."atomic-write" or (buildDepError "atomic-write"))
          (hsPkgs."broadcast-chan" or (buildDepError "broadcast-chan"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."delay" or (buildDepError "delay"))
          (hsPkgs."double-metaphone" or (buildDepError "double-metaphone"))
          (hsPkgs."hashable" or (buildDepError "hashable"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."hyperloglog" or (buildDepError "hyperloglog"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."linklater" or (buildDepError "linklater"))
          (hsPkgs."megaparsec" or (buildDepError "megaparsec"))
          (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."parser-combinators" or (buildDepError "parser-combinators"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."reflection" or (buildDepError "reflection"))
          (hsPkgs."sorted-list" or (buildDepError "sorted-list"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."uri-bytestring" or (buildDepError "uri-bytestring"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."wai" or (buildDepError "wai"))
          (hsPkgs."wai-websockets" or (buildDepError "wai-websockets"))
          (hsPkgs."websockets" or (buildDepError "websockets"))
          (hsPkgs."wreq" or (buildDepError "wreq"))
          (hsPkgs."wuss" or (buildDepError "wuss"))
          ];
        buildable = true;
        };
      exes = {
        "kurita" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bits" or (buildDepError "bits"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."delay" or (buildDepError "delay"))
            (hsPkgs."kurita" or (buildDepError "kurita"))
            (hsPkgs."siphash" or (buildDepError "siphash"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = true;
          };
        "kurita-central" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."delay" or (buildDepError "delay"))
            (hsPkgs."kurita" or (buildDepError "kurita"))
            (hsPkgs."linklater" or (buildDepError "linklater"))
            (hsPkgs."siphash" or (buildDepError "siphash"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = true;
          };
        "kurita-relay" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bits" or (buildDepError "bits"))
            (hsPkgs."bytes" or (buildDepError "bytes"))
            (hsPkgs."kurita" or (buildDepError "kurita"))
            (hsPkgs."siphash" or (buildDepError "siphash"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."warp" or (buildDepError "warp"))
            ];
          buildable = true;
          };
        "kurita-client" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."async" or (buildDepError "async"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."kurita" or (buildDepError "kurita"))
            (hsPkgs."monad-loops" or (buildDepError "monad-loops"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."time" or (buildDepError "time"))
            (hsPkgs."websockets" or (buildDepError "websockets"))
            ];
          buildable = true;
          };
        };
      tests = {
        "kurita-test" = {
          depends = [ (hsPkgs."base" or (buildDepError "base")) ];
          buildable = true;
          };
        };
      };
    }