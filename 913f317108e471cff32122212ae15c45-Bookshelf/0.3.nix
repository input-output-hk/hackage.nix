{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "Bookshelf";
        version = "0.3";
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
            (hsPkgs.citeproc-hs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
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