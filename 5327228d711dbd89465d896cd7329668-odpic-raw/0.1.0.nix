{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "odpic-raw";
          version = "0.1.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Daniel YU";
        maintainer = "leptonyu@gmail.com";
        author = "Daniel YU";
        homepage = "https://github.com/leptonyu/odpi-hs#readme";
        url = "";
        synopsis = "";
        description = "A low-level client library for the Oracle database, implemented as\nbindings to the C ODPI API.";
        buildType = "Simple";
      };
      components = {
        odpic-raw = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
          ];
          libs = [ pkgs.odpic ];
          build-tools = [
            hsPkgs.buildPackages.c2hs
          ];
        };
      };
    }