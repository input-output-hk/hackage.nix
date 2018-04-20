{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "acme-flipping-tables";
          version = "0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "jacob@stanley.io";
        author = "Jacob Stanley";
        homepage = "http://github.com/jystic/acme-flipping-tables";
        url = "";
        synopsis = "Stop execution with rage.";
        description = "(╯°□°）╯︵ ┻━┻";
        buildType = "Simple";
      };
      components = {
        acme-flipping-tables = {
          depends  = [ hsPkgs.base ];
        };
      };
    }