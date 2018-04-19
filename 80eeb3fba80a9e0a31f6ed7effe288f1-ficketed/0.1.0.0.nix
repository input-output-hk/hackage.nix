{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "ficketed";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "";
        maintainer = "sen.cenan@gmail.com";
        author = "sen.cenan@gmail.com";
        homepage = "";
        url = "";
        synopsis = "update statically hosted file in a push stule through socketed";
        description = "update statically hosted file in a push stule through socketed";
        buildType = "Simple";
      };
      components = {
        exes = {
          ficketed = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.async
              hsPkgs.binary
              hsPkgs.bytestring
              hsPkgs.directory
              hsPkgs.mime-types
              hsPkgs.text
              hsPkgs.blaze-html
              hsPkgs.http-types
              hsPkgs.wai
              hsPkgs.wai-app-static
              hsPkgs.warp
              hsPkgs.socketed
              hsPkgs.optparse-applicative
              hsPkgs.MissingH
            ];
          };
        };
      };
    }