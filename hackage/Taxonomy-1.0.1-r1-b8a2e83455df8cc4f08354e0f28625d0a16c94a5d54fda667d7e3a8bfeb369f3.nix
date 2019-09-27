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
      identifier = { name = "Taxonomy"; version = "1.0.1"; };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "florian.eggenhofer@univie.ac.at";
      author = "Florian Eggenhofer";
      homepage = "";
      url = "";
      synopsis = "Libary for parsing, processing and vizualization of taxonomy data";
      description = "Haskell cabal Taxonomy libary contains tools, parsers, datastructures and visualisation\nfor the NCBI (National Center for Biotechnology Information) Taxonomy datasources.\n\nIt can utilize information from the <http://www.ncbi.nlm.nih.gov/taxonomy Entrez> REST interface via <https://github.com/eggzilla/EntrezHTTP EntrezHTTP>,\nas well as from the files of the Taxonomy database <ftp://ftp.ncbi.nih.gov/pub/taxonomy/ dump>.\n\nInput data is parsed into a FGL based datastructure, which enables a wealth of processing\nsteps like node distances, retrieval of parent nodes or extraction of\nsubtrees.\n\nTrees can be visualised via dot-format (<http://graphviz.org/ graphviz>)\n\n<<http://www.tbi.univie.ac.at/~egg/taxonomy.svg>>\n\nor via json-format (<http://d3js.org/d3js>).\n\nThe <https://hackage.haskell.org/package/TaxonomyTools TaxonomyTools> package contains tools based on this package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."either-unwrap" or (buildDepError "either-unwrap"))
          (hsPkgs."fgl" or (buildDepError "fgl"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."graphviz" or (buildDepError "graphviz"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."aeson" or (buildDepError "aeson"))
          (hsPkgs."vector" or (buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }