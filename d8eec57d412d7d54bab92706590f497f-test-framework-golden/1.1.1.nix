{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.8";
        identifier = {
          name = "test-framework-golden";
          version = "1.1.1";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Roman Cheplyaka <roma@ro-che.info>";
        author = "Roman Cheplyaka";
        homepage = "https://github.com/feuerbach/test-framework-golden";
        url = "";
        synopsis = "Golden tests support for test-framework";
        description = "This package provides support for «golden testing».\nA golden test is an IO action that writes its result to a file.\nTo pass the test, this output file should be identical to the corresponding\n«golden» file, which contains the correct result for the test.";
        buildType = "Simple";
      };
      components = {
        "test-framework-golden" = {
          depends  = [
            hsPkgs.base
            hsPkgs.test-framework
            hsPkgs.bytestring
            hsPkgs.process
          ];
        };
      };
    }