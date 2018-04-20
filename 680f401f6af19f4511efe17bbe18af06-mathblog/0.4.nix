{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "mathblog";
          version = "0.4";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Jonathan Daugherty <drcygnus@gmail.com>";
        author = "Jonathan Daugherty <drcygnus@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "A program for creating and managing a static\nweblog with LaTeX math and function graphs";
        description = "This package provides a program for creating and\nmanaging a statically-generated, VCS-friendly,\nmathematically-inclined weblog.  If you're\ninterested in managing a blog with few moving\nparts and support for embedded LaTeX math,\nembedded function plotting, and the UNIX editor\nof your choice, then this is the blogging\nplatform for you!  For detailed information and a\nfull feature list, please see the README.";
        buildType = "Simple";
      };
      components = {
        exes = {
          mb = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.unix
              hsPkgs.process
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.SHA
              hsPkgs.bytestring
              hsPkgs.HStringTemplate
              hsPkgs.ConfigFile
            ];
          };
          mb-tests = {
            depends  = [
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.pandoc
              hsPkgs.pandoc-types
              hsPkgs.unix
              hsPkgs.process
              hsPkgs.time
              hsPkgs.old-locale
              hsPkgs.SHA
              hsPkgs.bytestring
              hsPkgs.HStringTemplate
              hsPkgs.ConfigFile
              hsPkgs.HUnit
              hsPkgs.test-framework
              hsPkgs.test-framework-hunit
            ];
          };
        };
      };
    }