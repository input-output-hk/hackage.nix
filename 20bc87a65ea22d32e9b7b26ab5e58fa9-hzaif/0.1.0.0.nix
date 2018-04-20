{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hzaif";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (C) 2015-2016, I amd D";
        maintainer = "d.kupanhy@gmail.com";
        author = "I am D";
        homepage = "http://github.com/i-amd3/hzaif";
        url = "";
        synopsis = "This package is Zaif Exchange Api wrapper";
        description = "zaif is Bitcoin/Monacoin trading marketplace in Japan, And this package uses zaif exchange api.";
        buildType = "Simple";
      };
      components = {
        hzaif = {
          depends  = [
            hsPkgs.base
            hsPkgs.http-conduit
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.aeson
          ];
        };
        exes = {
          hzaif-exe = {
            depends  = [
              hsPkgs.base
              hsPkgs.hzaif
            ];
          };
        };
        tests = {
          hzaif-test = {
            depends  = [
              hsPkgs.base
              hsPkgs.hzaif
            ];
          };
        };
      };
    }