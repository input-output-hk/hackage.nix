{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "servant-router";
          version = "0.7.1";
        };
        license = "BSD-3-Clause";
        copyright = "2016 Will Fancher";
        maintainer = "willfancher38@gmail.com";
        author = "Will Fancher";
        homepage = "https://github.com/ElvishJerricco/servant-router";
        url = "";
        synopsis = "Servant router for non-server applications.";
        description = "Write Servant APIs to be routed without a server.";
        buildType = "Simple";
      };
      components = {
        "servant-router" = {
          depends  = [
            hsPkgs.base
            hsPkgs.servant
            hsPkgs.text
            hsPkgs.http-api-data
            hsPkgs.http-types
            hsPkgs.network-uri
            hsPkgs.bytestring
            hsPkgs.mtl
          ];
        };
        tests = {
          "servant-router-test" = {
            depends  = [
              hsPkgs.base
              hsPkgs.servant-router
              hsPkgs.servant
              hsPkgs.mtl
            ];
          };
        };
      };
    }