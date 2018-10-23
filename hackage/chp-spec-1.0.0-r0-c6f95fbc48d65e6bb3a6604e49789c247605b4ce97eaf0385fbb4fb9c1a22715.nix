{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = {
        name = "chp-spec";
        version = "1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009--2010, University of Kent";
      maintainer = "neil@twistedsquare.com";
      author = "Neil Brown";
      homepage = "http://www.cs.kent.ac.uk/projects/ofa/chp/";
      url = "";
      synopsis = "A mirror implementation of chp that generates a specification of the program";
      description = "This library mirrors the API of much of the CHP library, but\ninstead of executing the program properly, using this library\nwill generate the CSP specification of your program.  See\nthis article for details and caveats: <http://chplib.wordpress.com/2010/05/03/new-chp-spec-library-released/>";
      buildType = "Simple";
    };
    components = {
      "chp-spec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.mtl)
          (hsPkgs.pretty)
          (hsPkgs.TypeCompose)
        ];
      };
    };
  }