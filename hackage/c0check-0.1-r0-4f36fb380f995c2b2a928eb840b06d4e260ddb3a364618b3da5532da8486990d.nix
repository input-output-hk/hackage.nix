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
      specVersion = "1.2";
      identifier = {
        name = "c0check";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "Simple C0 Syntax Check";
      description = "The package contains a progam to check if your C-Program is valid C0.\nThe C0-language is introduced in the basic programming course \\\"Algorithmisches Denken und imperative Programmierung\\\" (WS 2011/12 and later) at the University of Bonn.\nThe program contained in the package will take a C source code file and test the content if it is conform to the C0-language specifications.\nThe answer is simply yes or no.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "c0check" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.c0parser)
          ];
        };
      };
    };
  }