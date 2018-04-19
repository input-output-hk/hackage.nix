{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "gtfs";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "The General Transit Feed Specification format";
        description = "This module provides data types and parsers for the General Transit Feed\nSpecification, described at\n<http://code.google.com/transit/spec/transit_feed_specification.html>.\n\nGTFS is used by transit agencies to provide schedules, geographic\ninformation, etc. to Google Maps and other Google applications.  Many data\nsets are available online, often with few restrictions, so the format is\nuseful to third-party developers.";
        buildType = "Simple";
      };
      components = {
        gtfs = {
          depends  = [
            hsPkgs.base
            hsPkgs.filepath
            hsPkgs.directory
            hsPkgs.csv
            hsPkgs.rowrecord
            hsPkgs.split
          ];
        };
      };
    }