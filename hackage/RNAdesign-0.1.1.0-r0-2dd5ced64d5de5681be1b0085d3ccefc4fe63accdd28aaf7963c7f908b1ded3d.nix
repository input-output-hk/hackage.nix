{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6.0";
      identifier = { name = "RNAdesign"; version = "0.1.1.0"; };
      license = "GPL-3.0-only";
      copyright = "Christian Hoener zu Siederdissen, Stefan Hammer, Ingrid Abfalter, Ivo L. Hofacker, Christoph Flamm, Peter F. Stadler, 2013-2014";
      maintainer = "choener@tbi.univie.ac.at";
      author = "Christian Hoener zu Siederdissen, 2013-2014";
      homepage = "";
      url = "";
      synopsis = "Multi-target RNA sequence design";
      description = "The RNA sequence design problem asks for a single sequence that\nreadily folds into the one or more structural targets that are\ngiven as input.\n\nThis program expects on standard input a file with one or more\nstructures and, possibly, additional sequence constraints. It\nwill then run a Markov chain to find a sequence that is optimal\nwith regard to the structural targets and the user-defineable\noptimization function.\n\nThe user can give different optimization criteria on the\ncommand line, akin to a simple calculator.\n\n\n\nIf you find this program useful, please cite:\n\n@\nChristian Hoener zu Siederdissen, Stefan Hammer, Ingrid Abfalter, Ivo L. Hofacker, Christoph Flamm, Peter F. Stadler\nComputational design of RNAs with complex energy landscapes\n2013. Biopolymers. 99, no. 12. 99. 1124–36. http://dx.doi.org/10.1002/bip.22337\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."monad-primitive" or ((hsPkgs.pkgs-errors).buildDepError "monad-primitive"))
          (hsPkgs."mwc-random-monad" or ((hsPkgs.pkgs-errors).buildDepError "mwc-random-monad"))
          (hsPkgs."parallel" or ((hsPkgs.pkgs-errors).buildDepError "parallel"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."tuple" or ((hsPkgs.pkgs-errors).buildDepError "tuple"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."fgl-extras-decompositions" or ((hsPkgs.pkgs-errors).buildDepError "fgl-extras-decompositions"))
          (hsPkgs."BiobaseTurner" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseVienna" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseVienna"))
          (hsPkgs."BiobaseXNA" or ((hsPkgs.pkgs-errors).buildDepError "BiobaseXNA"))
          (hsPkgs."ParsecTools" or ((hsPkgs.pkgs-errors).buildDepError "ParsecTools"))
          (hsPkgs."PrimitiveArray" or ((hsPkgs.pkgs-errors).buildDepError "PrimitiveArray"))
          (hsPkgs."RNAFold" or ((hsPkgs.pkgs-errors).buildDepError "RNAFold"))
          (hsPkgs."ViennaRNA-bindings" or ((hsPkgs.pkgs-errors).buildDepError "ViennaRNA-bindings"))
          ];
        buildable = true;
        };
      exes = {
        "RNAdesign" = {
          depends = [
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
            ];
          buildable = true;
          };
        };
      };
    }