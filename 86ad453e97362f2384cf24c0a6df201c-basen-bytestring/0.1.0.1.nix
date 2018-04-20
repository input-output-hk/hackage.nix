{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "basen-bytestring";
          version = "0.1.0.1";
        };
        license = "BSD-3-Clause";
        copyright = "2018 William Fisher";
        maintainer = "williamsykesfisher@gmail.com";
        author = "William Fisher";
        homepage = "https://github.com/FilWisher/basen-bytestring#readme";
        url = "";
        synopsis = "";
        description = "Base-N ByteStrings for base{16,32,58,64}";
        buildType = "Simple";
      };
      components = {
        basen-bytestring = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
        };
        tests = {
          basen-bytestring-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.basen-bytestring
              hsPkgs.bytestring
              hsPkgs.QuickCheck
            ];
          };
        };
      };
    }