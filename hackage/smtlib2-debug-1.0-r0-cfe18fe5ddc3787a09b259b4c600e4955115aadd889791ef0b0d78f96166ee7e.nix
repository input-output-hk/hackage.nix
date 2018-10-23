{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "smtlib2-debug";
        version = "1.0";
      };
      license = "GPL-3.0-only";
      copyright = "";
      maintainer = "guenther@forsyte.at";
      author = "Henning Günther <guenther@forsyte.at>";
      homepage = "";
      url = "";
      synopsis = "Dump the communication with an SMT solver for debugging purposes.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "smtlib2-debug" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.smtlib2)
          (hsPkgs.smtlib2-pipe)
          (hsPkgs.ansi-terminal)
          (hsPkgs.atto-lisp)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.dependent-map)
          (hsPkgs.dependent-sum)
        ];
      };
    };
  }