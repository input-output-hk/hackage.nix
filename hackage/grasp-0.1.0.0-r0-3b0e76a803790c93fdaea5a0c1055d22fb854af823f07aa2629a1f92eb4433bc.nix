{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "grasp"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Jan Mas Rovira";
      maintainer = "janmasrovira@gmail.com";
      author = "Jan Mas Rovira";
      homepage = "https://bitbucket.org/janmasrovira/am3-project/overview";
      url = "";
      synopsis = "GRASP implementation for the AMMM project.";
      description = "= Brief summary\nThis is part of the final project for the AMMM (MIRI, FIB-UPC) subject.\nIt contains the random instance generator plus all the GRASP part.\n\nIt is hosted at https://bitbucket.org/janmasrovira/am3-project.\n\nThis package includes:\n\n* A polymorphic GRASP implementation.\n* A random instance generator for the AM3 project.\n* The @AM3@ folder contains the code specific to the final project for\nthe Algorithmic Methods for Mathematical Models subject\n(Master in Innovation and Research in Informatics, FIB-UPC).\n\n= Contents\nMake sure to read the documentation of all the modules listed below.\n\nSpecifically, the contents of each module (sorted by relevance to the project) are:\n\n1. \"GRASP\": A polymorphic parameterizable implementation of a Greedy Randomized\nAdaptive Search Procedure (GRASP).\nThe idea is taken from this paper: http://www.optimization-online.org/DB_FILE/2001/09/371.pdf.\nIt does not contain anything that is specific to the AM3 project.\n2. \"AM3.Solution\": Contains all the specific functions to the solution of an\ninstance of the AM3 project.\n3. \"AM3.RandomInstance\": A parameterizable random generator of instances.\n4. \"AM3.Instance\": An instance of the problem. It also provides useful functions that\nhave to do with constructing, querying, importing, exporting... an instance.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."clock" or ((hsPkgs.pkgs-errors).buildDepError "clock"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."pcre-heavy" or ((hsPkgs.pkgs-errors).buildDepError "pcre-heavy"))
          (hsPkgs."primitive" or ((hsPkgs.pkgs-errors).buildDepError "primitive"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."turtle" or ((hsPkgs.pkgs-errors).buildDepError "turtle"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
          (hsPkgs."megaparsec" or ((hsPkgs.pkgs-errors).buildDepError "megaparsec"))
          ];
        buildable = true;
        };
      exes = {
        "grasp-exe" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."grasp" or ((hsPkgs.pkgs-errors).buildDepError "grasp"))
            ];
          buildable = true;
          };
        };
      tests = {
        "grasp-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."grasp" or ((hsPkgs.pkgs-errors).buildDepError "grasp"))
            ];
          buildable = true;
          };
        };
      };
    }