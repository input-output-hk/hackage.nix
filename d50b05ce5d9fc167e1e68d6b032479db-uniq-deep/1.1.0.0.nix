{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "uniq-deep";
          version = "1.1.0.0";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "ncaq@ncaq.net";
        author = "ncaq";
        homepage = "https://github.com/ncaq/uniq-deep";
        url = "";
        synopsis = "uniq-deep";
        description = "alternative of unix uniq command. 'uniq-deep' detect repeated lines unless they are adjacent.";
        buildType = "Simple";
      };
      components = {
        exes = {
          uniq-deep = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.bytestring
            ];
          };
        };
      };
    }