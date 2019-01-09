{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = { name = "tasty-golden"; version = "2.2.2.3"; };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka";
      homepage = "https://github.com/feuerbach/tasty-golden";
      url = "";
      synopsis = "Golden tests support for tasty";
      description = "This package provides support for «golden testing».\nA golden test is an IO action that writes its result to a file.\nTo pass the test, this output file should be identical to the corresponding\n«golden» file, which contains the correct result for the test.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.tasty)
          (hsPkgs.bytestring)
          (hsPkgs.process)
          (hsPkgs.mtl)
          (hsPkgs.optparse-applicative)
          (hsPkgs.filepath)
          (hsPkgs.temporary-rc)
          (hsPkgs.tagged)
          (hsPkgs.deepseq)
          (hsPkgs.containers)
          (hsPkgs.directory)
          ];
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-golden)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.temporary-rc)
            ];
          };
        };
      };
    }