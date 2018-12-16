{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = {
        name = "brainfuck-tut";
        version = "0.7.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2016 Allele Dev";
      maintainer = "allele.dev@gmail.com";
      author = "Allele Dev";
      homepage = "https://gitlab.com/cpp.cabrera/brainfuck-tut";
      url = "";
      synopsis = "A simple BF interpreter.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.array)
        ];
      };
      exes = {
        "bfh" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.brainfuck-tut)
          ];
        };
      };
    };
  }