{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "augeas";
          version = "0.1.1";
        };
        license = "LicenseRef-GPL";
        copyright = "";
        maintainer = "jude@pwan.org";
        author = "Jude Nagurney";
        homepage = "";
        url = "";
        synopsis = "A Haskell FFI wrapper for the Augeas API";
        description = "A Haskell FFI wrapper for the Augeas API";
        buildType = "Custom";
      };
      components = {
        augeas = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.unix
            hsPkgs.haskell98
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