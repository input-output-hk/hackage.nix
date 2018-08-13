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
      specVersion = "1.8";
      identifier = {
        name = "dclabel";
        version = "0.0.5";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Deian Stefan, Alejandro Russo, John C. Mitchell, David Mazieres";
      maintainer = "Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "Deian Stefan, Alejandro Russo";
      homepage = "";
      url = "";
      synopsis = "The Disjunction Category Label Format";
      description = "The /DC Label/ (DCLabel) library provides dynamic information\nflow control label format in the form of conjunctions of\ndisjunctions of principals. Most code should import module\n\"DCLabel.Safe\"; trusted code should import \"DCLabel.TCB\".\nThe core functionality of the library is documented in\n\"DCLabel.Core\", while the small EDSL used to create labels is\ndocuments in \"DCLabel.NanoEDSL\". DCLabel was implemented by David\nMazieres (<http://www.scs.stanford.edu/~dm/>), Deian Stefan\n(<http://www.scs.stanford.edu/~deian/>), and Alejandro Russo\n(<http://www.cse.chalmers.se/~russo/>).";
      buildType = "Simple";
    };
    components = {
      "dclabel" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cereal)
          (hsPkgs.pretty)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.base)
            (hsPkgs.dclabel)
            (hsPkgs.bytestring)
            (hsPkgs.cereal)
          ];
        };
      };
    };
  }