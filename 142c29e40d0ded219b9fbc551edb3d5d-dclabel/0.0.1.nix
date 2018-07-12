{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "dclabel";
          version = "0.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Deian Stefan, David Mazieres, Alejandro Russo";
        maintainer = "Deian Stefan  <deian at cs dot stanford dot edu>,\nAlejandro Russo < russo at chalmers dot se >,";
        author = "Deain Stefan, David Mazieres, Alejandro Russo";
        homepage = "";
        url = "";
        synopsis = "The Disjunction Category Label Format.";
        description = "The /DC Label/ (DCLabel) library provides dynamic information\nflow control label format in the form of conjunctions of\ndisjunctions of principals. Most code should import module\n\"DCLabel.Safe\"; trusted code should import \"DCLabel.TCB\".\nThe core functionality of the library is documented in\n\"DCLabel.Core\", while the small EDSL used to create labels is\ndocuments in \"DCLabel.NanoEDSL\". DCLabel was implemented by David\nMazieres (<http://www.scs.stanford.edu/~dm/>), Deian Stefan\n(<http://www.scs.stanford.edu/~deian/>), and Alejandro Russo\n(<http://www.cse.chalmers.se/~russo/>).";
        buildType = "Simple";
      };
      components = {
        "dclabel" = {
          depends  = [
            hsPkgs.base
            hsPkgs.pretty
            hsPkgs.QuickCheck
          ];
        };
      };
    }