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
      specVersion = "2.2";
      identifier = { name = "json-syntax"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/byteverse/json-syntax";
      url = "";
      synopsis = "High-performance JSON parser and encoder";
      description = "This library parses JSON into a @Value@ type that is consistent with the\nABNF described in [RFC 7159](https://tools.ietf.org/html/rfc7159). The\nparser is about six times faster than the parser that `aeson` provides.\nThis parser is however, non-resumable, so if resumable parsing is\nimportant, `aeson` should be preferred.\n\nThis library does not include any functions or typeclasses to help users\nmarshal `Value` to their application-specific data types. Such functions\nand typeclasses are outside the scope of this library. If anyone writes a\nlibrary that offers users these conveniences open a issue so that the\n@json-syntax@ documentation can point users to it.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array-builder" or (buildDepError "array-builder"))
          (hsPkgs."array-chunks" or (buildDepError "array-chunks"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytebuild" or (buildDepError "bytebuild"))
          (hsPkgs."byteslice" or (buildDepError "byteslice"))
          (hsPkgs."bytesmith" or (buildDepError "bytesmith"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."scientific-notation" or (buildDepError "scientific-notation"))
          (hsPkgs."text-short" or (buildDepError "text-short"))
          ];
        buildable = true;
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."array-chunks" or (buildDepError "array-chunks"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."json-syntax" or (buildDepError "json-syntax"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."scientific" or (buildDepError "scientific"))
            (hsPkgs."scientific-notation" or (buildDepError "scientific-notation"))
            (hsPkgs."bytebuild" or (buildDepError "bytebuild"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-short" or (buildDepError "text-short"))
            (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bench" = {
          depends = [
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."byteslice" or (buildDepError "byteslice"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."gauge" or (buildDepError "gauge"))
            (hsPkgs."json-syntax" or (buildDepError "json-syntax"))
            (hsPkgs."neat-interpolation" or (buildDepError "neat-interpolation"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."scientific-notation" or (buildDepError "scientific-notation"))
            ];
          buildable = true;
          };
        };
      };
    }