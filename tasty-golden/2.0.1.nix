{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "tasty-golden";
          version = "2.0.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka";
        homepage = "https://github.com/feuerbach/tasty-golden";
        url = "";
        synopsis = "Golden tests support for tasty";
        description = "This package provides support for «golden testing».\nA golden test is an IO action that writes its result to a file.\nTo pass the test, this output file should be identical to the corresponding\n«golden» file, which contains the correct result for the test.";
        buildType = "Simple";
      };
      components = {
        tasty-golden = {
          depends  = [
            hsPkgs.base
            hsPkgs.tasty
            hsPkgs.bytestring
            hsPkgs.process
            hsPkgs.mtl
            hsPkgs.optparse-applicative
          ];
        };
      };
    }