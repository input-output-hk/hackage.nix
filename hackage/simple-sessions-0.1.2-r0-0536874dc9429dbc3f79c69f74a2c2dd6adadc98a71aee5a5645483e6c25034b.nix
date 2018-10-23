{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "simple-sessions";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "tov@eecs.harvard.edu";
      author = "Jesse A. Tov <tov@eecs.harvard.edu>";
      homepage = "http://www.eecs.harvard.edu/~tov/pubs/haskell-session-types/";
      url = "";
      synopsis = "A simple implementation of session types";
      description = "This library is based on the session types implementation\nfrom \\\"Haskell Session Types with (Almost) No Class,\\\" from\nthe 2008 Haskell Symposium.  For a full-featured session types\nlibrary, see the sessions package\n(<http://hackage.haskell.org/cgi-bin/hackage-scripts/package/sessions>).";
      buildType = "Simple";
    };
    components = {
      "simple-sessions" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.indexed)
          (hsPkgs.synchronous-channels)
        ];
      };
    };
  }