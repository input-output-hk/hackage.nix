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
      specVersion = "0";
      identifier = {
        name = "vty";
        version = "3.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Corey O'Connor (coreyoconnor@gmail.com)";
      author = "Stefan O'Rear";
      homepage = "";
      url = "";
      synopsis = "A simple terminal access library";
      description = "vty is a *very* simplistic library in the niche of ncurses.  It is intended\nto be easy to use, have no confusing corner cases, and good support for common\nterminal types.\n\nIf you want to use it, currently the best reference is the test module (Test.hs).\n\nNotable infelicities: requires an ANSI-type terminal, poor efficiency,\nrequires Linux\\/xterm style UTF8 support.\n\nYou can 'darcs get' it from <http://code.haskell.org/vty/>\n&#169; 2006-2007 Stefan O'Rear; BSD3 license.";
      buildType = "Simple";
    };
    components = {
      "vty" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.unix)
        ];
      };
    };
  }