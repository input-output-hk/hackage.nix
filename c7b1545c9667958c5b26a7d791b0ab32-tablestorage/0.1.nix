{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "tablestorage";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Phil Freeman 2012";
        maintainer = "Phil Freeman <paf31-at-cantab.net>";
        author = "Phil Freeman <paf31-at-cantab.net>";
        homepage = "http://github.com/paf31/tablestorage";
        url = "";
        synopsis = "Azure Table Storage REST API Wrapper";
        description = "A collection of functions to call the methods of the Azure Table Storage REST API from Haskell.\nTable and entity level functions are supported along with shared key authentication token generation, and error handling.\nPagination and projections are currently not supported.";
        buildType = "Simple";
      };
      components = {
        "tablestorage" = {
          depends  = [
            hsPkgs.base
            hsPkgs.SHA
            hsPkgs.bytestring
            hsPkgs.utf8-string
            hsPkgs.base64-bytestring
            hsPkgs.HTTP
            hsPkgs.network
            hsPkgs.time
            hsPkgs.haskell98
            hsPkgs.xml
          ];
        };
      };
    }