{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "GA";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Kenneth Hoste";
        maintainer = "kenneth.hoste@gmail.com";
        author = "Kenneth Hoste";
        homepage = "http://boegel.kejo.be";
        url = "";
        synopsis = "Genetic algorithm library";
        description = "This package provides a framework for working with genetic\nalgorithms. A genetic algorithm is an evolutionary technique,\ninspired by biological evolution, to evolve entities that perform\nas good as possible in terms of a predefined criterion (the scoring\nfunction). Note: lower scores are assumed to indicate better entities.\nThe GA module provides a type class for defining entities and the\nfunctions that are required by the genetic algorithm.\nCheckpointing in between generations is available, as is automatic\nrestoring from the last available checkpoint.";
        buildType = "Simple";
      };
      components = {
        GA = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.random
          ];
        };
      };
    }