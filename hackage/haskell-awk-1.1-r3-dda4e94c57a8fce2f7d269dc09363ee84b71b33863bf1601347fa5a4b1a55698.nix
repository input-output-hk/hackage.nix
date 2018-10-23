{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskell-awk";
        version = "1.1";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "Mario Pastorelli <pastorelli.mario@gmail.com>,  Samuel Gelineau <gelisam@gmail.com>";
      author = "Mario Pastorelli <pastorelli.mario@gmail.com>,  Samuel Gelineau <gelisam@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Transform text from the command-line using Haskell expressions.";
      description = "Hawk is a command line utility to process streams of text\nusing Haskell code. It is intended to be used in a UNIX\npipeline. It offers a configuration system to personalize\nimported modules and a way to represent values on the console.";
      buildType = "Custom";
    };
    components = {
      "haskell-awk" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.stringsearch)
        ];
      };
      exes = {
        "hawk" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.easy-file)
            (hsPkgs.exceptions)
            (hsPkgs.filepath)
            (hsPkgs.haskell-awk)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.hint)
            (hsPkgs.MonadCatchIO-mtl)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.stringsearch)
            (hsPkgs.process)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
      tests = {
        "reference" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.doctest)
            (hsPkgs.exceptions)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.temporary)
            (hsPkgs.haskell-awk)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.easy-file)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.hint)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.process)
            (hsPkgs.stringsearch)
            (hsPkgs.time)
            (hsPkgs.transformers)
          ];
        };
      };
    };
  }