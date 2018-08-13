{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "grasp";
        version = "0.1.0.0";
      };
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
      "grasp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clock)
          (hsPkgs.directory)
          (hsPkgs.extra)
          (hsPkgs.filepath)
          (hsPkgs.hashable)
          (hsPkgs.lens)
          (hsPkgs.mtl)
          (hsPkgs.pcre-heavy)
          (hsPkgs.primitive)
          (hsPkgs.process)
          (hsPkgs.random-shuffle)
          (hsPkgs.safe)
          (hsPkgs.split)
          (hsPkgs.system-filepath)
          (hsPkgs.text)
          (hsPkgs.transformers)
          (hsPkgs.turtle)
          (hsPkgs.unordered-containers)
          (hsPkgs.vector)
          (hsPkgs.MonadRandom)
          (hsPkgs.megaparsec)
        ];
      };
      exes = {
        "grasp-exe" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.grasp)
          ];
        };
      };
      tests = {
        "grasp-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.grasp)
          ];
        };
      };
    };
  }