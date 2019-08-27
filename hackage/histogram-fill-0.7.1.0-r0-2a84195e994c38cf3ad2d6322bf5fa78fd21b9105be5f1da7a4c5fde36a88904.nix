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
      identifier = { name = "histogram-fill"; version = "0.7.1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alexey Khudyakov <alexey.skladnoy@gmail.com>";
      author = "Alexey Khudyakov";
      homepage = "http://bitbucket.org/Shimuuar/histogram-fill/";
      url = "";
      synopsis = "Library for histograms creation.";
      description = "This is library for histograms filling. Its aim to provide\nconvenient way to create and fill histograms.\n\nChanges in 0.7.1.0\n\n* breduceX and breduceY are added.\n\nChanges in 0.7.0.0\n\n* mkFoldBuilder is added to @Data.Histogram.Fill@\n\n* fill functions in @Data.Histogram.ST@ are replaced with generic\nvariant.\n\n* Indexing for immutable histograms is added and special constructor\nfor first and last bin are added to @HistIndex@ data type.\n\n* Functions to calculate sum, minimum and maximum of immutable\nhistogram are added.\n\nChanges in 0.6.2.0\n\n* MaybeBin added.\n\n* Helper function for defining Read instances for bins are exposed.\n\n* mapData function is added.\n\n* Slicing histogram do not results in crash if indices are out of\nbounds.\n\n* Eq instances for BinF and BinD are added.\n\n* NFData instance for Bin2D is fixed.\n\nChanges in 0.6.1.0\n\n* Helper function and type synonym for Bin2D\n\nChanges in 0.6.0.1\n\n* Fixed compilation with GHC 7.4";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        };
      tests = {
        "tests" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."histogram-fill" or (buildDepError "histogram-fill"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
            (hsPkgs."test-framework" or (buildDepError "test-framework"))
            (hsPkgs."test-framework-quickcheck2" or (buildDepError "test-framework-quickcheck2"))
            ];
          };
        };
      };
    }