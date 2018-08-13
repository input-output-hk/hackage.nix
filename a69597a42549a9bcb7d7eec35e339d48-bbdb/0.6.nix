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
        name = "bbdb";
        version = "0.6";
      };
      license = "GPL-3.0-only";
      copyright = "Henry Laxen";
      maintainer = "nadine.and.henry@pobox.com";
      author = "Henry Laxen";
      homepage = "https://github.com/henrylaxen/bbdb";
      url = "";
      synopsis = "Ability to read, write, and modify BBDB files";
      description = "BBDB (http://savannah.nongnu.org/projects/bbdb/) is a\ncontact management utility that can be used with\nemacs.  It stores its data internally as a lisp\nexpression.  This module parses the lisp and\nprovides some convenience functions to get at and\nmanipulate the data all from within Haskell.  See\nthe hackage docs for usage and examples.";
      buildType = "Simple";
    };
    components = {
      "bbdb" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.parsec)
        ];
      };
      tests = {
        "bbdb-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.parsec)
          ];
        };
      };
    };
  }