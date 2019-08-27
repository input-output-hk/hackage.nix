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
      identifier = { name = "cmv"; version = "1.0.3"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "egg@informatik.uni-freiburg.de";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Detailed visualization of CMs, HMMs and their comparisions";
      description = "cmv is a collection of tools for the visualisation of Hidden Markov Models (HMMV) and RNA-family models (CMV). Moreover it can visualise comparisons of these models (HMMCV,CMCV), and annotate linked regions in the structural alignments they were constructed from and via, 3rd party tools, in their consensus secondary structure.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."BiobaseInfernal" or (buildDepError "BiobaseInfernal"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."ParsecTools" or (buildDepError "ParsecTools"))
          (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."PrimitiveArray" or (buildDepError "PrimitiveArray"))
          (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
          (hsPkgs."SVGFonts" or (buildDepError "SVGFonts"))
          (hsPkgs."BioHMM" or (buildDepError "BioHMM"))
          (hsPkgs."StockholmAlignment" or (buildDepError "StockholmAlignment"))
          (hsPkgs."BiobaseTypes" or (buildDepError "BiobaseTypes"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."diagrams-core" or (buildDepError "diagrams-core"))
          ];
        };
      exes = {
        "CMCV" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseInfernal" or (buildDepError "BiobaseInfernal"))
            (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmv" or (buildDepError "cmv"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."StockholmAlignment" or (buildDepError "StockholmAlignment"))
            ];
          };
        "CMV" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseInfernal" or (buildDepError "BiobaseInfernal"))
            (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmv" or (buildDepError "cmv"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."StockholmAlignment" or (buildDepError "StockholmAlignment"))
            ];
          };
        "CMCWStoCMCV" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseInfernal" or (buildDepError "BiobaseInfernal"))
            (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmv" or (buildDepError "cmv"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            ];
          };
        "CMCtoHMMC" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseInfernal" or (buildDepError "BiobaseInfernal"))
            (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmv" or (buildDepError "cmv"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."BioHMM" or (buildDepError "BioHMM"))
            ];
          };
        "HMMCtoCMC" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseInfernal" or (buildDepError "BiobaseInfernal"))
            (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmv" or (buildDepError "cmv"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."BioHMM" or (buildDepError "BioHMM"))
            ];
          };
        "CMVJson" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."BiobaseInfernal" or (buildDepError "BiobaseInfernal"))
            (hsPkgs."BiobaseXNA" or (buildDepError "BiobaseXNA"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmv" or (buildDepError "cmv"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            ];
          };
        "HMMCV" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmv" or (buildDepError "cmv"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."BioHMM" or (buildDepError "BioHMM"))
            (hsPkgs."StockholmAlignment" or (buildDepError "StockholmAlignment"))
            ];
          };
        "HMMV" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."cmdargs" or (buildDepError "cmdargs"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."vector" or (buildDepError "vector"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."cmv" or (buildDepError "cmv"))
            (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."BioHMM" or (buildDepError "BioHMM"))
            (hsPkgs."StockholmAlignment" or (buildDepError "StockholmAlignment"))
            ];
          };
        };
      };
    }