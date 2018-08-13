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
      specVersion = "1.18";
      identifier = {
        name = "brainfuck-tut";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Alejandro Cabrera";
      maintainer = "cpp.cabrera@gmail.com";
      author = "Alejandro Cabrera";
      homepage = "https://gitlab.com/cpp.cabrera/brainfuck-tut";
      url = "";
      synopsis = "A simple BF interpreter.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "brainfuck-tut" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
      exes = {
        "bfh" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.brainfuck-tut)
          ];
        };
      };
    };
  }