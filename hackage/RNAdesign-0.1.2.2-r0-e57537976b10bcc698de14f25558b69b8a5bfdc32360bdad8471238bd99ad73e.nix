{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "RNAdesign"; version = "0.1.2.2"; };
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
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."fgl" or (errorHandler.buildDepError "fgl"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."monad-primitive" or (errorHandler.buildDepError "monad-primitive"))
          (hsPkgs."mwc-random-monad" or (errorHandler.buildDepError "mwc-random-monad"))
          (hsPkgs."parallel" or (errorHandler.buildDepError "parallel"))
          (hsPkgs."parsec" or (errorHandler.buildDepError "parsec"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."random" or (errorHandler.buildDepError "random"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."tuple" or (errorHandler.buildDepError "tuple"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."fgl-extras-decompositions" or (errorHandler.buildDepError "fgl-extras-decompositions"))
          (hsPkgs."BiobaseTurner" or (errorHandler.buildDepError "BiobaseTurner"))
          (hsPkgs."BiobaseVienna" or (errorHandler.buildDepError "BiobaseVienna"))
          (hsPkgs."BiobaseXNA" or (errorHandler.buildDepError "BiobaseXNA"))
          (hsPkgs."ParsecTools" or (errorHandler.buildDepError "ParsecTools"))
          (hsPkgs."PrimitiveArray" or (errorHandler.buildDepError "PrimitiveArray"))
          (hsPkgs."RNAFold" or (errorHandler.buildDepError "RNAFold"))
          (hsPkgs."ViennaRNA-bindings" or (errorHandler.buildDepError "ViennaRNA-bindings"))
        ];
        buildable = true;
      };
      exes = {
        "RNAdesign" = {
          depends = [
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
            (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          ];
          buildable = true;
        };
      };
    };
  }