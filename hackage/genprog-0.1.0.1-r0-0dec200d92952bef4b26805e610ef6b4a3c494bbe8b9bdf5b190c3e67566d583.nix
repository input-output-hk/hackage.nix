{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "genprog";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2010 Jan Snajder";
      maintainer = "jan.snajder@fer.hr";
      author = "Jan Snajder";
      homepage = "http://github.com/jsnajder/genprog";
      url = "";
      synopsis = "Genetic programming library";
      description = "This package provides a /genetic programming/ framework. Genetic\nprogramming is an evolutionary technique, inspired by biological\nevolution, to evolve programs for solving specific problems. A genetic\nprogram is represented by a value of an algebraic datatype and\nassociated with a custom-defined /fitness/ value indicating the quality\nof the solution. Starting from a randomly generated initial population\nof genetic programs, the genetic operators of /selection/, /crossover/,\nand /mutation/ are used to evolve programs of increasingly better\nquality.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.syb)
          (hsPkgs.syz)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }