{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      onlytestsuite = false;
      profiling = false;
      coverage = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "lambdacube-compiler";
        version = "0.4.0.1";
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
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.indentation)
          (hsPkgs.pretty-compact)
          (hsPkgs.text)
          (hsPkgs.lambdacube-ir)
          (hsPkgs.vector)
        ];
      };
      exes = {
        "lambdacube-compiler-unit-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.parsec)
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
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.lambdacube-compiler)
            (hsPkgs.mtl)
            (hsPkgs.monad-control)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.indentation)
            (hsPkgs.pretty-compact)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.lambdacube-ir)
            (hsPkgs.vector)
          ];
        };
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
        "lambdacube-compiler-coverage-test-suite" = {
          depends  = [
            (hsPkgs.aeson)
            (hsPkgs.async)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.lambdacube-ir)
            (hsPkgs.mtl)
            (hsPkgs.monad-control)
            (hsPkgs.optparse-applicative)
            (hsPkgs.parsec)
            (hsPkgs.indentation)
            (hsPkgs.pretty-compact)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.vector)
          ];
        };
      };
    };
  }