{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.10";
        identifier = {
          name = "plural";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "fresheyeball@gmail.com";
        author = "Isaac Shapira";
        homepage = "";
        url = "";
        synopsis = "Pluralize";
        description = "Pluralize english words pretty darn well";
        buildType = "Simple";
      };
      components = {
        plural = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.containers
          ];
        };
        tests = {
          spec = {
            depends  = [
              hsPkgs.base
              hsPkgs.plural
              hsPkgs.hspec
            ];
          };
        };
      };
    }