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
      identifier = { name = "RNAdesign"; version = "0.1.2.1"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, 2013-2014";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen";
      homepage = "";
      url = "";
      synopsis = "Multi-target RNA sequence design";
      description = "The RNA sequence design problem asks for a single sequence that\nreadily folds into the (one or more) structural targets that\nare given as input.\n\nThis program expects on standard input a file with one or more\nstructures and, possibly, additional sequence constraints in\nthe form of an IUPAC string. It will then run a Markov chain to\nfind a sequence that is optimal with regard to the structural\ntargets and the user-defineable optimization function.\n\nThe user can give different optimization criteria on the\ncommand line, akin to a simple calculator.\n\nFor more details please consult:\n<https://github.com/choener/RNAdesign/blob/master/README.md>\n\nYou can also run @RNAdesign --showmanual@ which will display\nthe same @README.md@.\n\n\n\nIf you find this program useful, please cite:\n\n@\nChristian Hoener zu Siederdissen, Stefan Hammer, Ingrid Abfalter, Ivo L. Hofacker, Christoph Flamm, Peter F. Stadler\nComputational design of RNAs with complex energy landscapes\n2013. Biopolymers. 99, no. 12. 99. 1124–36.\n@\n\n<http://dx.doi.org/10.1002/bip.22337>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."monad-primitive" or (buildDepError "monad-primitive"))
          (hsPkgs."mwc-random-monad" or (buildDepError "mwc-random-monad"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."primitive" or (buildDepError "primitive"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."tuple" or (buildDepError "tuple"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."fgl-extras-decompositions" or (buildDepError "fgl-extras-decompositions"))
          (hsPkgs."BiobaseTurner" or (buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseVienna" or (buildDepError "BiobaseVienna"))
          (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
          (hsPkgs."ParsecTools" or (buildDepError "ParsecTools"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          (hsPkgs."RNAFold" or (buildDepError "RNAFold"))
          (hsPkgs."ViennaRNA-bindings" or (buildDepError "ViennaRNA-bindings"))
          ];
        };
      exes = {
        "RNAdesign" = {
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."file-embed" or (buildDepError "file-embed"))
            ];
          };
        };
      };
    }