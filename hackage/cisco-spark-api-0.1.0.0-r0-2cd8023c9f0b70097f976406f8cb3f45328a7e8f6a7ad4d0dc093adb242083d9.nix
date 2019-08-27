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
      identifier = { name = "cisco-spark-api"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017 Naoto Shimazaki";
      maintainer = "Naoto.Shimazaki@gmail.com";
      author = "Naoto Shimazaki";
      homepage = "https://github.com/nshimaza/cisco-spark-api#readme";
      url = "";
      synopsis = "A Haskell bindings for Cisco Spark API";
      description = "Cisco-spark-api package provides types and functions for accessing Cisco Spark REST API.\nThis package is designed to improve type safety over the API.  Each entity is separately typed.\nJSON messages contained in REST responses are decoded into appropriate type of Haskell record.\nJSON messages sent in REST requests are encoded only from correct type of record.\nSome Spark REST API returning list of objects require HTTP Link Header based pagination.\nHaskell functions abstract it.  They automatically request subsequent pages as needed and\nseamlessly stream returned elements rather than just return a chunk of elements in a response.\nThis package also provides some sample usage in command line application style.\nSee source under app directory of the source package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."bitset-word8" or (buildDepError "bitset-word8"))
          ];
        };
      exes = {
        "cisco-spark-api-exe" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."cisco-spark-api" or (buildDepError "cisco-spark-api"))
            ];
          };
        };
      tests = {
        "cisco-spark-api-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."conduit-combinators" or (buildDepError "conduit-combinators"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."http-conduit" or (buildDepError "http-conduit"))
            (hsPkgs."http-types" or (buildDepError "http-types"))
            (hsPkgs."network-uri" or (buildDepError "network-uri"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."wai" or (buildDepError "wai"))
            (hsPkgs."warp" or (buildDepError "warp"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."cisco-spark-api" or (buildDepError "cisco-spark-api"))
            (hsPkgs."thread-hierarchy" or (buildDepError "thread-hierarchy"))
            ];
          };
        };
      };
    }