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
      identifier = { name = "wedged"; version = "3"; };
      license = "LicenseRef-OtherLicense";
      copyright = "(C) 2013,2015,2016,2018 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://mathr.co.uk/wedged";
      url = "";
      synopsis = "Wedged postcard generator.";
      description = "Wedged (C) 2013,2015,2016,2018 Claude Heiland-Allen.\n\nCopyleft: This is a free work, you can copy, distribute, and\nmodify it under the terms of the Free Art License\n<http://artlibre.org/licence/lal/en/>.\n\nUsage:\n\n> mkdir 7x5\n> cd 7x5\n> wedged 13 9 0.5 72\n> cd ..\n\n> mkdir 12x8\n> cd 12x8\n> wedged 14 9 0.8 72\n> cd ..\n\nOutput:\n\n189 EPS files in the 7x5 dir, totalling 25 MB, runtime 3m15s.\n\n115 EPS files in the 12x8 dir, totalling 17 MB, runtime 6m25s.\n\nRun time measured using a single core of a 4.3GHz AMD Ryzen 7 2700X\nEight-Core Processor.\n\nInformation:\n\nVersion 0 worked with GHC 7.8 and Diagrams 1.2 with the Cairo backend.\n\nVersion 1 was updated to work with GHC 8.0 and Diagrams 1.3 with the\nCairo backend.\n\nVersion 2 was updated to work with GHC 8.4 and Diagrams 1.4 with the\nRasterific backend.\n\nVersion 3 is updated to work with GHC 8.6 and Diagrams 1.4 with the\nPostscript backend.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "wedged" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."MonadRandom" or (buildDepError "MonadRandom"))
            (hsPkgs."array" or (buildDepError "array"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."strict" or (buildDepError "strict"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-postscript" or (buildDepError "diagrams-postscript"))
            ];
          };
        };
      };
    }