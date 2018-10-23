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
        name = "tasty-silver";
        version = "3.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Philipp Hausmann";
      author = "Roman Cheplyaka, Philipp Hausmann and others";
      homepage = "https://github.com/phile314/tasty-silver";
      url = "";
      synopsis = "Golden tests support for tasty. Fork of tasty-golden.";
      description = "This package provides support for «golden testing».\nA golden test is an IO action that writes its result to a file.\nTo pass the test, this output file should be identical to the corresponding\n«golden» file, which contains the correct result for the test.";
      buildType = "Simple";
    };
    components = {
      "tasty-silver" = {
        depends  = [
          (hsPkgs.ansi-terminal)
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.deepseq)
          (hsPkgs.filepath)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.process)
          (hsPkgs.process-extras)
          (hsPkgs.stm)
          (hsPkgs.tagged)
          (hsPkgs.tasty)
          (hsPkgs.temporary-rc)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-silver)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.temporary-rc)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }