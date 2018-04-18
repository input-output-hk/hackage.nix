{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.6";
        identifier = {
          name = "buildbox";
          version = "2.1.9.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "Ben Lippmeier";
        homepage = "http://code.ouroborus.net/buildbox";
        url = "";
        synopsis = "Rehackable components for writing buildbots and test harnesses.";
        description = "Includes utilities for checking the host platform, running tests, capturing output,\nhandling errors, comparing runtimes against a baseline, sending mail, running events to a schedule etc.";
        buildType = "Simple";
      };
      components = {
        buildbox = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.temporary
            hsPkgs.exceptions
            hsPkgs.pretty
            hsPkgs.stm
            hsPkgs.text
          ];
        };
      };
    }