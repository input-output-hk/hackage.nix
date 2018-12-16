{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "mathblog";
        version = "0.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Jonathan Daugherty <cygnus@foobox.com>";
      author = "Jonathan Daugherty <cygnus@foobox.com>";
      homepage = "http://jtdaugherty.github.io/mathblog/";
      url = "";
      synopsis = "A program for creating and managing a static\nweblog with LaTeX math and diagrams";
      description = "This package provides a program for creating and\nmanaging a statically-generated, VCS-friendly,\nmathematically-inclined weblog.  If you're\ninterested in managing a blog with few moving\nparts and support for embedded LaTeX math,\nembedded function plotting, and the UNIX editor\nof your choice, then this is the blogging\nplatform for you!  For detailed information and a\nfull feature list, please see the manual PDF in the\n'doc' directory.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "mb" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.SHA)
            (hsPkgs.HStringTemplate)
            (hsPkgs.ConfigFile)
            (hsPkgs.containers)
            (hsPkgs.fsnotify)
            (hsPkgs.mtl)
            (hsPkgs.either)
            (hsPkgs.http-server)
            (hsPkgs.network)
            (hsPkgs.temporary)
            (hsPkgs.bytestring)
            (hsPkgs.url)
            (hsPkgs.HTTP)
            (hsPkgs.data-default)
            (hsPkgs.JuicyPixels)
          ];
        };
        "mb-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.unix)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.old-locale)
            (hsPkgs.SHA)
            (hsPkgs.HStringTemplate)
            (hsPkgs.ConfigFile)
            (hsPkgs.containers)
            (hsPkgs.fsnotify)
            (hsPkgs.mtl)
            (hsPkgs.either)
            (hsPkgs.http-server)
            (hsPkgs.system-filepath)
            (hsPkgs.network)
            (hsPkgs.temporary)
            (hsPkgs.bytestring)
            (hsPkgs.url)
            (hsPkgs.HTTP)
            (hsPkgs.data-default)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.HUnit)
            (hsPkgs.JuicyPixels)
          ];
        };
      };
    };
  }