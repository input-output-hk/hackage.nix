{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "flowdock";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "ian@brewtown.co";
        author = "Ian Duncan";
        homepage = "https://github.com/brewtown/hs-flowdock";
        url = "";
        synopsis = "Flowdock client library for Haskell";
        description = "";
        buildType = "Simple";
      };
      components = {
        flowdock = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.lens
            hsPkgs.http-client
            hsPkgs.http-client-tls
            hsPkgs.mtl
            hsPkgs.text
            hsPkgs.bytestring
            hsPkgs.template-haskell
            hsPkgs.unordered-containers
          ];
        };
      };
    }