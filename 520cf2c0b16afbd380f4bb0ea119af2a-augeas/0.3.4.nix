{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "augeas";
          version = "0.3.4";
        };
        license = "LicenseRef-LGPL";
        copyright = "";
        maintainer = "jude@pwan.org";
        author = "Jude Nagurney";
        homepage = "http://trac.haskell.org/augeas";
        url = "http://hackage.haskell.org/packages/archive/augeas/0.3.3/augeas-0.3.3.tar.gz";
        synopsis = "A Haskell FFI wrapper for the Augeas API";
        description = "A Haskell FFI wrapper for the Augeas API";
        buildType = "Configure";
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