{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "genders";
          version = "0.1.0.1";
        };
        license = "MIT";
        copyright = "© 2014 Tweag I/O Limited";
        maintainer = "Mathieu Boespflug <m@tweag.io>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Bindings to libgenders.";
        description = "Genders data identifies nodes in a cluster of machines and allows\nassociating attributes with each node. libgenders allows reading and\nquerying genders data from a file.";
        buildType = "Simple";
      };
      components = {
        genders = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.filepath
            hsPkgs.vector
          ];
          libs = [ pkgs.genders ];
        };
        tests = {
          tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.bytestring
              hsPkgs.genders
              hsPkgs.hspec
              hsPkgs.network
              hsPkgs.vector
            ];
          };
        };
      };
    }