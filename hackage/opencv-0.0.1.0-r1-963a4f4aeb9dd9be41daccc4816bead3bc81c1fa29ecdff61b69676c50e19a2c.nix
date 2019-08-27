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
    flags = { internal-documentation = false; };
    package = {
      specVersion = "1.23";
      identifier = { name = "opencv"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Roel van Dijk <roel@lambdacube.nl>, Bas van Dijk <v.dijk.bas@gmail.com>";
      author = "Roel van Dijk <roel@lambdacube.nl>, Bas van Dijk <v.dijk.bas@gmail.com>";
      homepage = "https://github.com/LumiGuide/haskell-opencv";
      url = "";
      synopsis = "Haskell binding to OpenCV-3.x";
      description = "<<https://raw.githubusercontent.com/LumiGuide/haskell-opencv/master/data/haskell-opencv-logo-200x82.png>>\n\nThis is a Haskell library providing a binding to OpenCV-3.x.\nIt binds directly with the C++ API using the @inline-c@ Haskell library.\n\nThe library is far from complete but the framework is there to easily\nbind missing functionality.\n\nNote that the OpenCV contrib modules are provided by\n<http://hackage.haskell.org/package/opencv-extra opencv-extra>.\n\nMake sure to checkout the\n<https://github.com/LumiGuide/haskell-opencv/tree/master/opencv-examples opencv-examples>.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (buildToolDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (buildToolDepError "Cabal")))
        ];
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."bindings-DSL" or (buildDepError "bindings-DSL"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."data-default" or (buildDepError "data-default"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."inline-c" or (buildDepError "inline-c"))
          (hsPkgs."inline-c-cpp" or (buildDepError "inline-c-cpp"))
          (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."repa" or (buildDepError "repa"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        libs = [ (pkgs."stdc++" or (sysDepError "stdc++")) ];
        pkgconfig = [ (pkgconfPkgs."opencv" or (pkgConfDepError "opencv")) ];
        };
      tests = {
        "doc-images-opencv" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."data-default" or (buildDepError "data-default"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."Glob" or (buildDepError "Glob"))
            (hsPkgs."haskell-src-exts" or (buildDepError "haskell-src-exts"))
            (hsPkgs."JuicyPixels" or (buildDepError "JuicyPixels"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."opencv" or (buildDepError "opencv"))
            (hsPkgs."primitive" or (buildDepError "primitive"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        "test-opencv" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."linear" or (buildDepError "linear"))
            (hsPkgs."opencv" or (buildDepError "opencv"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."repa" or (buildDepError "repa"))
            (hsPkgs."tasty" or (buildDepError "tasty"))
            (hsPkgs."tasty-hunit" or (buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (buildDepError "tasty-quickcheck"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      benchmarks = {
        "bench-opencv" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."criterion" or (buildDepError "criterion"))
            (hsPkgs."opencv" or (buildDepError "opencv"))
            (hsPkgs."repa" or (buildDepError "repa"))
            ];
          };
        };
      };
    }