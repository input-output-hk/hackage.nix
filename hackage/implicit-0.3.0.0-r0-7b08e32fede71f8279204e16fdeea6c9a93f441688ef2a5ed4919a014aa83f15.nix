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
      identifier = { name = "implicit"; version = "0.3.0.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Julia Longtin <julia.longtin@gmail.com>";
      author = "Julia Longtin <julia.longtin@gmail.com>";
      homepage = "http://implicitcad.org/";
      url = "";
      synopsis = "A math-inspired programmatic 2&3D CAD system.";
      description = "An OpenSCAD execution engine for generating models in STL and many other formats.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
          (hsPkgs."storable-endian" or (buildDepError "storable-endian"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "extopenscad" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            ];
          buildable = true;
          };
        "docgen" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            ];
          buildable = true;
          };
        "implicitsnap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            ];
          buildable = true;
          };
        "Benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            ];
          buildable = true;
          };
        };
      tests = {
        "test-implicit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            ];
          buildable = true;
          };
        };
      benchmarks = {
        "parser-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            ];
          buildable = true;
          };
        };
      };
    }