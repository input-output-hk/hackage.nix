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
      specVersion = "1.10";
      identifier = {
        name = "svm-light-utils";
        version = "0.1.2";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Ben Gamari <bgamari@gmail.com>";
      maintainer = "bgamari@gmail.com";
      author = "Ben Gamari";
      homepage = "http://github.com/bgamari/svm-light-utils";
      url = "";
      synopsis = "Parsers and formatters for the SVMlight input file format";
      description = "Parsers and formatters for the SVMlight input file format";
      buildType = "Simple";
    };
    components = {
      "svm-light-utils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.attoparsec)
          (hsPkgs.bytestring)
        ];
      };
    };
  }