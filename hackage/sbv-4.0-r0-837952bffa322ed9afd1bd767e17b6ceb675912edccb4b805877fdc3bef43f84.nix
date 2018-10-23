{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "sbv";
        version = "4.0";
      };
      license = "BSD-3-Clause";
      copyright = "Levent Erkok, 2010-2015";
      maintainer = "Levent Erkok (erkokl@gmail.com)";
      author = "Levent Erkok";
      homepage = "http://leventerkok.github.com/sbv/";
      url = "";
      synopsis = "SMT Based Verification: Symbolic Haskell theorem prover using SMT solving.";
      description = "Express properties about Haskell programs and automatically prove them using SMT\n(Satisfiability Modulo Theories) solvers.\n\nFor details, please see: <http://leventerkok.github.com/sbv/>\n\nRelease notes: <http://github.com/LeventErkok/sbv/blob/master/CHANGES.md>";
      buildType = "Simple";
    };
    components = {
      "sbv" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.async)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.old-time)
          (hsPkgs.pretty)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.QuickCheck)
          (hsPkgs.random)
          (hsPkgs.syb)
        ];
      };
      exes = {
        "SBVUnitTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.syb)
            (hsPkgs.sbv)
          ];
        };
      };
      tests = {
        "SBVBasicTests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.syb)
            (hsPkgs.sbv)
          ];
        };
      };
    };
  }