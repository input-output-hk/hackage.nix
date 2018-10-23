{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      cli = true;
      profiling = false;
      alltest = false;
      testsuite = false;
      coverage = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lambdacube-compiler";
        version = "0.6.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "csaba.hruska@gmail.com";
      author = "Csaba Hruska, Péter Diviánszky, Dániel Pék, Andor Pénzes";
      homepage = "http://lambdacube3d.com";
      url = "";
      synopsis = "LambdaCube 3D is a DSL to program GPUs";
      description = "LambdaCube 3D is a domain specific language and library that makes it\npossible to program GPUs in a purely functional style.";
      buildType = "Simple";
    };
    components = {
      "lambdacube-compiler" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.megaparsec)
          (hsPkgs.ansi-wl-pprint)
          (hsPkgs.pretty-show)
          (hsPkgs.text)
          (hsPkgs.lambdacube-ir)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "lc" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.optparse-applicative)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
          ];
        };
        "lambdacube-compiler-unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.megaparsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
          ];
        };
        "lambdacube-compiler-test-suite" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.mtl)
            (hsPkgs.monad-control)
            (hsPkgs.optparse-applicative)
            (hsPkgs.megaparsec)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.patience)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.lambdacube-ir)
            (hsPkgs.vector)
          ];
        };
        "lambdacube-compiler-performance-report" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.containers)
            (hsPkgs.optparse-applicative)
          ];
        };
        "lambdacube-backend-test-server" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.lambdacube-ir)
            (hsPkgs.pretty-show)
            (hsPkgs.optparse-applicative)
            (hsPkgs.aeson)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.websockets)
            (hsPkgs.JuicyPixels)
            (hsPkgs.vect)
            (hsPkgs.base64-bytestring)
            (hsPkgs.vector)
            (hsPkgs.process)
          ];
        };
        "lambdacube-compiler-coverage-test-suite" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.semigroups)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.lambdacube-ir)
            (hsPkgs.mtl)
            (hsPkgs.monad-control)
            (hsPkgs.optparse-applicative)
            (hsPkgs.megaparsec)
            (hsPkgs.ansi-wl-pprint)
            (hsPkgs.pretty-show)
            (hsPkgs.patience)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }