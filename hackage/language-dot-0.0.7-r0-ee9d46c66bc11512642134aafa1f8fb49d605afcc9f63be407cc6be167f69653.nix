{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { executable = true; };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "language-dot";
        version = "0.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Galois, Inc.";
      maintainer = "Brian Lewis <brian@lorf.org>";
      author = "Brian Lewis <brian@lorf.org>";
      homepage = "";
      url = "";
      synopsis = "A library for the analysis and creation of Graphviz DOT files";
      description = "A library for the analysis and creation of Graphviz DOT files.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.parsec3)
          (hsPkgs.pretty)
        ];
      };
      exes = { "ppdot" = {}; };
    };
  }