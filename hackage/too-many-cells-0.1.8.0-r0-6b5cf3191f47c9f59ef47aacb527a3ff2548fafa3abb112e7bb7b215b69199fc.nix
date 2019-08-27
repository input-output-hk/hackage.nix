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
      identifier = { name = "too-many-cells"; version = "0.1.8.0"; };
      license = "GPL-3.0-only";
      copyright = "2019 Gregory W. Schwartz";
      maintainer = "gsch@pennmedicine.upenn.edu";
      author = "Gregory W. Schwartz";
      homepage = "http://github.com/GregorySchwartz/too-many-cells#readme";
      url = "";
      synopsis = "Cluster single cells and analyze cell clade relationships.";
      description = "Different methods to cluster and analyze single cell data with diversity indices and differential expression.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."birch-beer" or (buildDepError "birch-beer"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."cassava" or (buildDepError "cassava"))
          (hsPkgs."colour" or (buildDepError "colour"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."diagrams" or (buildDepError "diagrams"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
          (hsPkgs."diagrams-graphviz" or (buildDepError "diagrams-graphviz"))
          (hsPkgs."differential" or (buildDepError "differential"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."diversity" or (buildDepError "diversity"))
          (hsPkgs."find-clumpiness" or (buildDepError "find-clumpiness"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."foldl" or (buildDepError "foldl"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
          (hsPkgs."hierarchical-clustering" or (buildDepError "hierarchical-clustering"))
          (hsPkgs."hierarchical-spectral-clustering" or (buildDepError "hierarchical-spectral-clustering"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."inline-r" or (buildDepError "inline-r"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."managed" or (buildDepError "managed"))
          (hsPkgs."matrix-market-attoparsec" or (buildDepError "matrix-market-attoparsec"))
          (hsPkgs."mltool" or (buildDepError "mltool"))
          (hsPkgs."modularity" or (buildDepError "modularity"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."palette" or (buildDepError "palette"))
          (hsPkgs."parallel" or (buildDepError "parallel"))
          (hsPkgs."plots" or (buildDepError "plots"))
          (hsPkgs."safe" or (buildDepError "safe"))
          (hsPkgs."scientific" or (buildDepError "scientific"))
          (hsPkgs."sparse-linear-algebra" or (buildDepError "sparse-linear-algebra"))
          (hsPkgs."split" or (buildDepError "split"))
          (hsPkgs."statistics" or (buildDepError "statistics"))
          (hsPkgs."streaming" or (buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-cassava" or (buildDepError "streaming-cassava"))
          (hsPkgs."streaming-with" or (buildDepError "streaming-with"))
          (hsPkgs."SVGFonts" or (buildDepError "SVGFonts"))
          (hsPkgs."temporary" or (buildDepError "temporary"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."text-show" or (buildDepError "text-show"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."vector-algorithms" or (buildDepError "vector-algorithms"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          ];
        };
      exes = {
        "too-many-cells" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."too-many-cells" or (buildDepError "too-many-cells"))
            (hsPkgs."aeson" or (buildDepError "aeson"))
            (hsPkgs."birch-beer" or (buildDepError "birch-beer"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."cassava" or (buildDepError "cassava"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."fgl" or (buildDepError "fgl"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."find-clumpiness" or (buildDepError "find-clumpiness"))
            (hsPkgs."graphviz" or (buildDepError "graphviz"))
            (hsPkgs."hierarchical-spectral-clustering" or (buildDepError "hierarchical-spectral-clustering"))
            (hsPkgs."inline-r" or (buildDepError "inline-r"))
            (hsPkgs."lens" or (buildDepError "lens"))
            (hsPkgs."matrix-market-attoparsec" or (buildDepError "matrix-market-attoparsec"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."optparse-generic" or (buildDepError "optparse-generic"))
            (hsPkgs."palette" or (buildDepError "palette"))
            (hsPkgs."plots" or (buildDepError "plots"))
            (hsPkgs."spectral-clustering" or (buildDepError "spectral-clustering"))
            (hsPkgs."streaming" or (buildDepError "streaming"))
            (hsPkgs."streaming-bytestring" or (buildDepError "streaming-bytestring"))
            (hsPkgs."streaming-utils" or (buildDepError "streaming-utils"))
            (hsPkgs."terminal-progress-bar" or (buildDepError "terminal-progress-bar"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."text-show" or (buildDepError "text-show"))
            (hsPkgs."transformers" or (buildDepError "transformers"))
            (hsPkgs."vector" or (buildDepError "vector"))
            ];
          };
        };
      };
    }