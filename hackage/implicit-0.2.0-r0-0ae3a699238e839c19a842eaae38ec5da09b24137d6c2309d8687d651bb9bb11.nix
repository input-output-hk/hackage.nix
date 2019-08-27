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
      identifier = { name = "implicit"; version = "0.2.0"; };
      license = "AGPL-3.0-only";
      copyright = "";
      maintainer = "Julia Longtin <julial@turinglace.com>";
      author = "Christopher Olah";
      homepage = "http://kalli1.faikvm.com/ImplicitCAD/Stable";
      url = "";
      synopsis = "Math-inspired programmatic 2&3D CAD: CSG, bevels, and shells; gcode export..";
      description = "A math-inspired programmatic CAD library in haskell.\nBuild objects with constructive solid geometry, bevels,\nshells and more in 2D & 3D. Then export to SVGs, STLs,\nor produce gcode directly!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."unordered-containers" or (buildDepError "unordered-containers"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."vector-space" or (buildDepError "vector-space"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."bytestring-builder" or (buildDepError "bytestring-builder"))
          (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
          (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
          (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
          (hsPkgs."storable-endian" or (buildDepError "storable-endian"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."NumInstances" or (buildDepError "NumInstances"))
          (hsPkgs."criterion" or (buildDepError "criterion"))
          (hsPkgs."snap-core" or (buildDepError "snap-core"))
          (hsPkgs."snap-server" or (buildDepError "snap-server"))
          (hsPkgs."silently" or (buildDepError "silently"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."hspec" or (buildDepError "hspec"))
          ];
        };
      exes = {
        "extopenscad" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            ];
          };
        "implicitsnap" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."storable-endian" or (buildDepError "storable-endian"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."snap-core" or (buildDepError "snap-core"))
            (hsPkgs."snap-server" or (buildDepError "snap-server"))
            (hsPkgs."silently" or (buildDepError "silently"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            ];
          };
        "Benchmark" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."blaze-svg" or (buildDepError "blaze-svg"))
            (hsPkgs."blaze-markup" or (buildDepError "blaze-markup"))
            (hsPkgs."parallel" or (buildDepError "parallel"))
            (hsPkgs."deepseq" or (buildDepError "deepseq"))
            (hsPkgs."vector-space" or (buildDepError "vector-space"))
            (hsPkgs."monads-tf" or (buildDepError "monads-tf"))
            (hsPkgs."blaze-builder" or (buildDepError "blaze-builder"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."storable-endian" or (buildDepError "storable-endian"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            ];
          };
        };
      tests = {
        "test-implicit" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."hspec" or (buildDepError "hspec"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            ];
          };
        };
      benchmarks = {
        "parser-bench" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."implicit" or (buildDepError "implicit"))
            ];
          };
        };
      };
    }