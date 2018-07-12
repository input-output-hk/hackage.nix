{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hasql-generic";
          version = "0.1.0.5";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Chris Kahn";
        maintainer = "chris@kahn.pro";
        author = "Chris Kahn";
        homepage = "https://github.com/chris-kahn/hasql-generic#readme";
        url = "";
        synopsis = "Generic encoder and decoder deriving for Hasql";
        description = "Please see README.md";
        buildType = "Simple";
      };
      components = {
        "hasql-generic" = {
          depends  = [
            hsPkgs.base
            hsPkgs.aeson
            hsPkgs.binary-parser
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.contravariant
            hsPkgs.generics-sop
            hsPkgs.hasql
            hsPkgs.postgresql-binary
            hsPkgs.scientific
            hsPkgs.text
            hsPkgs.time
            hsPkgs.uuid
            hsPkgs.vector
          ];
        };
      };
    }