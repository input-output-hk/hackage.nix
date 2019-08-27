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
      identifier = { name = "CMCompare"; version = "0.0.1.4"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, Ivo L. Hofacker, 2010";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, Ivo L. Hofacker";
      homepage = "http://www.tbi.univie.ac.at/software/cmcompare/";
      url = "";
      synopsis = "Infernal covariance model comparison";
      description = "Compares two Infernal covariance models. Returns the common\nMaxiMin score and the offending RNA sequence. High scores point\ntoward low discriminative power of the two models. Based on:\n\n\"Christian Höner zu Siederdissen, and Ivo L. Hofacker. 2010.\nDiscriminatory power of RNA family models. Bioinformatics 26,\nno. 18: 453–59\"\n\n<http://bioinformatics.oxfordjournals.org/content/26/18/i453.long>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
          (hsPkgs."BiobaseInfernal" or (buildDepError "BiobaseInfernal"))
          ];
        };
      exes = {
        "CMCompare" = {
          depends = [ (hsPkgs."cmdargs" or (buildDepError "cmdargs")) ];
          };
        };
      };
    }