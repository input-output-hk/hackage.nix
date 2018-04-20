{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "buildbox";
          version = "1.5.1.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Ben Lippmeier <benl@ouroborus.net>";
        author = "Ben Lippmeier";
        homepage = "http://code.ouroborus.net/buildbox";
        url = "";
        synopsis = "Rehackable components for writing buildbots and test harnesses.";
        description = "Includes utilities for checking the host platform, running tests, capturing output,\nhandling errors, comparing runtimes against a baseline, sending mail, running events to a schedule etc.\nSome of the Command functions are just wrappers around shell commands, so be careful about passing\nthem weirdly formed arguments.";
        buildType = "Simple";
      };
      components = {
        buildbox = {
          depends  = [
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.time
            hsPkgs.directory
            hsPkgs.mtl
            hsPkgs.old-locale
            hsPkgs.process
            hsPkgs.random
            hsPkgs.pretty
            hsPkgs.bytestring
            hsPkgs.stm
          ];
        };
      };
    }