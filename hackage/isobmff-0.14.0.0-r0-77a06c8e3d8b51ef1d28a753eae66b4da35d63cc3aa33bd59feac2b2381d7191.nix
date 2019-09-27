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
    flags = { tracing = true; fullbenchmarks = true; complextests = true; };
    package = {
      specVersion = "1.10";
      identifier = { name = "isobmff"; version = "0.14.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 Sven Heyll, Lindenbaum GmbH";
      maintainer = "sven.heyll@lindenbaum.eu";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/isobmff#readme";
      url = "";
      synopsis = "A parser and generator for the ISO-14496-12/14 base media file format";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."singletons" or (buildDepError "singletons"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."function-builder" or (buildDepError "function-builder"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."type-spec" or (buildDepError "type-spec"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."pretty-types" or (buildDepError "pretty-types"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      tests = {
        "spec" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."isobmff" or (buildDepError "isobmff"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."type-spec" or (buildDepError "type-spec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."pretty-types" or (buildDepError "pretty-types"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "bit-records" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."isobmff" or (buildDepError "isobmff"))
            (hsPkgs."binary" or (buildDepError "binary"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."tagged" or (buildDepError "tagged"))
            (hsPkgs."type-spec" or (buildDepError "type-spec"))
            ];
          buildable = true;
          };
        };
      };
    }