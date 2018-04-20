{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "dclabel";
          version = "0.9.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2012 Hails team";
        maintainer = "Hails Team  <hails-team at scs dot stanford dot edu>";
        author = "Hails Team";
        homepage = "";
        url = "";
        synopsis = "This packge is deprecated. See the the \"LIO.DCLabel\" in the \"lio\" package.";
        description = "The /DC Label/ (DCLabel) library provides an information flow\ncontrol label format in the form of conjunctions of\ndisjunctions of principals. Most code should import module\n\"DCLabel\"; trusted code may additionally import\n\"DCLabel.Privs.TCB\".  The core functionality of the library is\ndocumented in \"DCLabel.Core\", while the small EDSL used to\ncreate labels is documents in \"DCLabel.NanoEDSL\".";
        buildType = "Simple";
      };
      components = {
        dclabel = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.cereal
          ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.test-framework
              hsPkgs.test-framework-quickcheck2
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.dclabel
              hsPkgs.bytestring
              hsPkgs.cereal
            ];
          };
        };
        benchmarks = {
          benchmarks = {
            depends  = [
              hsPkgs.base
              hsPkgs.QuickCheck
              hsPkgs.quickcheck-instances
              hsPkgs.containers
              hsPkgs.criterion
              hsPkgs.dclabel
              hsPkgs.bytestring
              hsPkgs.cereal
            ];
          };
        };
      };
    }