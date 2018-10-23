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
        name = "language-typescript";
        version = "0.0.3";
      };
      license = "MIT";
      copyright = "(c) DICOM Grid Inc. 2013";
      maintainer = "Phillip Freeman <paf31@cantab.net>";
      author = "Phillip Freeman <paf31@cantab.net>";
      homepage = "http://github.com/paf31/language-typescript";
      url = "";
      synopsis = "A library for working with TypeScript Definition files";
      description = "A library for working with TypeScript Definition files";
      buildType = "Simple";
    };
    components = {
      "language-typescript" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.parsec)
          (hsPkgs.pretty)
        ];
      };
    };
  }