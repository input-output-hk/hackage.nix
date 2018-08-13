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
      specVersion = "1.4";
      identifier = {
        name = "miniball";
        version = "0.1.0.2";
      };
      license = "GPL-3.0-only";
      copyright = "2013 Gard Spreemann (bindings). 1999-2013 Bernd Gärtner (Miniball itself)";
      maintainer = "Gard Spreemann <gspreemann@gmail.com>";
      author = "Gard Spreemann for bindings. Bernd Gärtner for Miniball itself.";
      homepage = "http://nonempty.org/software/haskell-miniball";
      url = "";
      synopsis = "Bindings to Miniball, a smallest enclosing ball library";
      description = "Bindings to Miniball, a C++ library (<http://www.inf.ethz.ch/personal/gaertner/miniball.html>) for\ncomputing the smallest enclosing ball of a set of points in Euclidean space.\n\nThe Miniball library itself is not included, as I consider it a dependency. It consists of only\na header file, and can be retrieved from <http://www.inf.ethz.ch/personal/gaertner/miniball.html>.\nTo build this package, simply have @miniball.hpp@ in GCC's include path. The standard C++ library\nand GCC with C++ support are also needed.\n\nHackage probably fails to build the Haddock documentation since Miniball itself is missing. The\ndocumentation can be viewed at <http://nonempty.org/software/haskell-miniball/>.\n\nMiniball itself is copyright 1999-2013, Bernd Gärtner.\n\nThe current version has only been tested with version 3.0 of Miniball.\n\nChanges in version 0.1.0.2:\n\n* Improve allocation before FFI call. Good speedup for short calls (factor 3 for 100000 points in R^3).";
      buildType = "Simple";
    };
    components = {
      "miniball" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.vector)
        ];
        libs = [ (pkgs.stdc++) ];
      };
    };
  }