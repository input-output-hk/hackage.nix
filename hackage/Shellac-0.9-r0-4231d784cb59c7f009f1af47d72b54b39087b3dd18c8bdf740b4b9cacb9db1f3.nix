{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "Shellac";
        version = "0.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "robdockins AT fastmail DOT fm";
      author = "Robert Dockins";
      homepage = "";
      url = "";
      synopsis = "A framework for creating shell envinronments";
      description = "Shellac is a framework for building read-eval-print style shells.\nShells are created by declaratively defining a set of shell commands\nand an evaluation function.  Shellac supports multiple shell backends,\nincluding a 'basic' backend which uses only Haskell IO primitives and\na full featured 'readline' backend based on the the Haskell readline\nbindings found in the standard libraries.\nThis library attempts to allow users to write shells at a high level\nand still enjoy the advanced features that may be available from a\npowerful line editing package like readline.";
      buildType = "Custom";
    };
    components = {
      "Shellac" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.mtl)
        ];
      };
    };
  }