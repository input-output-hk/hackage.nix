{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "legion-discovery";
          version = "1.0.0.0";
        };
        license = "Apache-2.0";
        copyright = "2016 Rick Owens";
        maintainer = "rick@owensmurray.com";
        author = "Rick Owens";
        homepage = "https://github.com/owensmurray/legion-discovery#readme";
        url = "";
        synopsis = "A discovery service based on Legion.";
        description = "A simple service discovery service based on Legion,\nthat natively supports the idea of interface\nversions, and the idea that clients may only be\ninterested in finding certain (compatible) versions\nof the services they are looking for.";
        buildType = "Simple";
      };
      components = {
        "legion-discovery" = {
          depends  = [
            hsPkgs.Cabal
            hsPkgs.SHA
            hsPkgs.aeson
            hsPkgs.attoparsec
            hsPkgs.base
            hsPkgs.binary
            hsPkgs.bytestring
            hsPkgs.canteven-http
            hsPkgs.canteven-log
            hsPkgs.conduit
            hsPkgs.containers
            hsPkgs.data-default-class
            hsPkgs.ekg
            hsPkgs.graphviz
            hsPkgs.http-api-data
            hsPkgs.http-grammar
            hsPkgs.legion
            hsPkgs.legion-extra
            hsPkgs.monad-logger
            hsPkgs.mtl
            hsPkgs.servant-server
            hsPkgs.text
            hsPkgs.time
            hsPkgs.wai
            hsPkgs.wai-extra
            hsPkgs.warp
          ];
        };
        exes = {
          "legion-discovery" = {
            depends  = [
              hsPkgs.base
              hsPkgs.legion-discovery
            ];
          };
        };
        tests = {
          "legion-discovery-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.legion-discovery
            ];
          };
        };
      };
    }