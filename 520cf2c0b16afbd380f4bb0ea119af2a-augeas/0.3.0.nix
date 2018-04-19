{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "augeas";
          version = "0.3.0";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jude@pwan.org";
        author = "Jude Nagurney";
        homepage = "http://trac.haskell.org/augeas";
        url = "";
        synopsis = "A Haskell FFI wrapper for the Augeas API";
        description = "A Haskell FFI wrapper for the Augeas API";
        buildType = "Custom";
      };
      components = {
        augeas = {
          depends  = [
            hsPkgs.base
            hsPkgs.directory
            hsPkgs.unix
            hsPkgs.bytestring
          ];
        };
        exes = {
          test-haskell-augeas = {
            depends  = [ hsPkgs.HUnit ];
            libs = [ pkgs.augeas ];
          };
        };
      };
    }