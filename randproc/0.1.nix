{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "randproc";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "dbanas@banasfamily.net";
        author = "David Banas";
        homepage = "";
        url = "";
        synopsis = "";
        description = "Data structures for working with random processes";
        buildType = "Simple";
      };
      components = {
        randproc = {
          depends  = [ hsPkgs.base ];
        };
      };
    }