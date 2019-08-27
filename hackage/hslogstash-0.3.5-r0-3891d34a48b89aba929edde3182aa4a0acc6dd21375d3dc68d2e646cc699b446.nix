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
      identifier = { name = "hslogstash"; version = "0.3.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "bartavelle@gmail.com";
      author = "Simon Marechal";
      homepage = "https://github.com/bartavelle/hslogstash";
      url = "";
      synopsis = "A library to work with, or as, a logstash server";
      description = "This library contains a few modules that let you work with Logstash messages, read them from a Redis list, store them in or get them from Elasticsearch, and more.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."conduit" or (buildDepError "conduit"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."parallel-io" or (buildDepError "parallel-io"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-conduit" or (buildDepError "network-conduit"))
          (hsPkgs."iconv" or (buildDepError "iconv"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."text-format" or (buildDepError "text-format"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."stm-chans" or (buildDepError "stm-chans"))
          (hsPkgs."stm-conduit" or (buildDepError "stm-conduit"))
          (hsPkgs."hedis" or (buildDepError "hedis"))
          (hsPkgs."stm" or (buildDepError "stm"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."lens-aeson" or (buildDepError "lens-aeson"))
          ];
        };
      tests = {
        "conduits" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hslogstash" or (buildDepError "hslogstash"))
            (hsPkgs."conduit" or (buildDepError "conduit"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."stm" or (buildDepError "stm"))
            (hsPkgs."split" or (buildDepError "split"))
            ];
          };
        };
      };
    }