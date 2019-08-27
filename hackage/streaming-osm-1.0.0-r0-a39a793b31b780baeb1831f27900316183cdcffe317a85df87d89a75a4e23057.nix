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
      identifier = { name = "streaming-osm"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2017 Azavea";
      maintainer = "colingw@gmail.com";
      author = "Colin Woodbury";
      homepage = "";
      url = "";
      synopsis = "A hand-written streaming byte parser for OpenStreetMap Protobuf data.";
      description = "A hand-written streaming byte parser for OpenStreetMap Protobuf data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      tests = {
        "streaming-osm-test" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."streaming-osm" or (buildDepError "streaming-osm"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            ];
          };
        };
      benchmarks = {
        "streaming-osm-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."attoparsec" or (buildDepError "attoparsec"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."zlib" or (buildDepError "zlib"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."streaming-osm" or (buildDepError "streaming-osm"))
            ];
          };
        };
      };
    }