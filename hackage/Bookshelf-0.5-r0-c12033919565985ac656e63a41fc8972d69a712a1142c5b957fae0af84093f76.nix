{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Bookshelf";
        version = "0.5";
      };
      license = "LicenseRef-GPL";
      copyright = "Copyright (c) 2009-2013 Emil Axelsson";
      maintainer = "Emil Axelsson <emax@chalmers.se>";
      author = "Emil Axelsson <emax@chalmers.se>";
      homepage = "http://www.cse.chalmers.se/~emax/bookshelf/Manual.shelf.html";
      url = "";
      synopsis = "A simple document organizer with some wiki functionality";
      description = "A simple document organizer with some wiki functionality";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bookshelf" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.pandoc-citeproc)
            (hsPkgs.parseargs)
          ];
        };
      };
      tests = {
        "documentation" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
          ];
        };
      };
    };
  }