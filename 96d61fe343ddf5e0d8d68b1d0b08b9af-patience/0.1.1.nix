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
      specVersion = "1.2";
      identifier = {
        name = "patience";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Patience diff and longest increasing subsequence";
      description = "This library implements the \\\"patience diff\\\" algorithm, as well as the patience\nalgorithm for the longest increasing subsequence problem.\n\nPatience diff computes the difference between two lists, for example the\nlines of two versions of a source file.  It provides a good balance of\nperformance, nice output for humans, and implementation simplicity.  For more\ninformation, see <http://alfedenzo.livejournal.com/170301.html> and\n<http://bramcohen.livejournal.com/73318.html>.\n\nNew in version 0.1.1: relaxed @containers@ dependency, so it should build on\nGHC 6.10.";
      buildType = "Simple";
    };
    components = {
      "patience" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
        ];
      };
    };
  }