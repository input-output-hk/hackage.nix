{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "urldisp-happstack";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s.clover@gmail.com";
        author = "Sterling Clover";
        homepage = "";
        url = "";
        synopsis = "Simple, declarative, expressive URL routing -- on happstack.";
        description = "UrlDisp combinators ported over happstack, as well as a lifted catch.";
        buildType = "Simple";
      };
      components = {
        urldisp-happstack = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.mtl
            hsPkgs.bytestring
            hsPkgs.happstack-server
          ];
        };
      };
    }