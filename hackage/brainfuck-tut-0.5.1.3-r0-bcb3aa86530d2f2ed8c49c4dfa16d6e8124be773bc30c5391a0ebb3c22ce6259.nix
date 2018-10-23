{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "brainfuck-tut";
        version = "0.5.1.3";
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