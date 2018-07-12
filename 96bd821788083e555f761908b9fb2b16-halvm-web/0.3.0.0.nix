{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "halvm-web";
          version = "0.3.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2016, Adam Wick";
        maintainer = "awick@galois.com";
        author = "Adam Wick";
        homepage = "http://halvm.org";
        url = "";
        synopsis = "A simple, static HaLVM web server";
        description = "A simple, static HaLVM web server";
        buildType = "Simple";
      };
      components = {
        exes = {
          "halvm-web" = {
            depends  = [
              hsPkgs.async
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.cereal
              hsPkgs.containers
              hsPkgs.HALVMCore
              hsPkgs.hans
              hsPkgs.HTTP
              hsPkgs.mime-types
              hsPkgs.network-uri
              hsPkgs.simple-tar
              hsPkgs.text
              hsPkgs.XenDevice
            ];
          };
        };
      };
    }