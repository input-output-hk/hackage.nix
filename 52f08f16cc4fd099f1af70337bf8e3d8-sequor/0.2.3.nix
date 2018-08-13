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
        name = "sequor";
        version = "0.2.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gchrupala@lsv.uni-saarland.de";
      author = "Grzegorz Chrupała";
      homepage = "http://code.google.com/p/sequor/";
      url = "";
      synopsis = "A sequence labeler based on Collins's sequence perceptron.";
      description = "A sequence labeler based on Collins's sequence perceptron.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "sequor" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.binary)
            (hsPkgs.mtl)
            (hsPkgs.vector)
            (hsPkgs.array)
            (hsPkgs.pretty)
            (hsPkgs.text)
          ];
        };
      };
    };
  }