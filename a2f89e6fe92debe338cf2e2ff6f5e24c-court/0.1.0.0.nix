{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "court";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2014, Thomas Feron";
        maintainer = "tho.feron@gmail.com";
        author = "Thomas Feron";
        homepage = "http://hub.darcs.net/thoferon/court";
        url = "";
        synopsis = "Simple and flexible CI system";
        description = "Simple and flexible CI system.";
        buildType = "Simple";
      };
      components = {
        exes = {
          court = {
            depends  = [
              hsPkgs.base
              hsPkgs.optparse-applicative
              hsPkgs.stm
              hsPkgs.process
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.bytestring
              hsPkgs.text
              hsPkgs.aeson
              hsPkgs.unix
            ];
          };
          court-darcs-plugin = {
            depends  = [
              hsPkgs.base
              hsPkgs.filepath
              hsPkgs.directory
              hsPkgs.process
            ];
          };
        };
      };
    }