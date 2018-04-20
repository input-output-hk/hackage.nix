{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "composite-opaleye";
          version = "0.4.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "2017 Confer Health, Inc.";
        maintainer = "oss@confer.care";
        author = "Confer Health, Inc.";
        homepage = "https://github.com/ConferHealth/composite#readme";
        url = "";
        synopsis = "Opaleye SQL for Frames records";
        description = "Integration between Frames records and Opaleye SQL, allowing records to be stored, retrieved, and queried from PostgreSQL.";
        buildType = "Simple";
      };
      components = {
        composite-opaleye = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.composite-base
            hsPkgs.lens
            hsPkgs.opaleye
            hsPkgs.postgresql-simple
            hsPkgs.product-profunctors
            hsPkgs.profunctors
            hsPkgs.template-haskell
            hsPkgs.text
            hsPkgs.vinyl
          ];
        };
      };
    }