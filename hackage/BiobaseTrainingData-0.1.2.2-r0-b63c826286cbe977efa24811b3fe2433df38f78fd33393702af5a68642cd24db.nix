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
      specVersion = "1.6.0";
      identifier = { name = "BiobaseTrainingData"; version = "0.1.2.2"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2011";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "http://www.tbi.univie.ac.at/~choener/";
      url = "";
      synopsis = "RNA folding training data";
      description = "Parameter training for RNA secondary structure prediction tools\nrequires data to train on. Since there are a number of\ndifferent available formats, and handling them all in the\ntraining tools is a pain, we have this library and programs.\n\"MkTrainingData\" transforms different formats and they all\nproduce a common \"training data\" format. This format is\nHaskell-readable (and only partially human-readable)\nline-by-line. Generating additional training data is therefor\neasy as one can just \"cat\" together different training files.\n\nNote that several features are designed around /extended/ RNA\nsecondary structures.\n\nNow with some filtering and manipulation options.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
          (hsPkgs."iteratee" or (buildDepError "iteratee"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."BiobaseDotP" or (buildDepError "BiobaseDotP"))
          (hsPkgs."BiobaseFR3D" or (buildDepError "BiobaseFR3D"))
          (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
          ];
        };
      exes = {
        "MkTrainingData" = {
          depends = [ (hsPkgs."cmdargs" or (buildDepError "cmdargs")) ];
          };
        };
      };
    }