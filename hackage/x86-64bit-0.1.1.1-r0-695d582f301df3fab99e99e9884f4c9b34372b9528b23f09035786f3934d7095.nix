{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "x86-64bit"; version = "0.1.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "divipp@gmail.com";
      author = "Péter Diviánszky";
      homepage = "https://github.com/divipp/x86-64";
      url = "";
      synopsis = "Runtime code generation for x86 64 bit machine code";
      description = "The primary goal of x86-64bit is to provide a lightweight assembler for machine generated 64 bit x86 assembly instructions. See README.md for further details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.monads-tf)
          (hsPkgs.vector)
          (hsPkgs.QuickCheck)
          ];
        };
      tests = {
        "test-x86-64bit" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.monads-tf)
            (hsPkgs.vector)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }