{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.16";
      identifier = {
        name = "claferIG";
        version = "0.3.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "jliang@gsd.uwaterloo.ca";
      author = "Jimmy Liang, Michal Antkiewicz, Luke Michael Brown";
      homepage = "https://github.com/gsdlab/claferIG";
      url = "";
      synopsis = "claferIG is an interactive tool that generates instances of Clafer models.";
      description = "Clafer is a powerful (equivalent to first-order predicate logic) yet lightweight structural modeling language. Despite simplicity and conciseness of Clafer, writing correct models remains challenging due to hard-to-predict interactions among all constraints expressed in the model. Clafer instance generator (ClaferIG) is an interactive tool that generates instances and counter examples of concrete clafers in a Clafer model. If the concrete clafers do not have contradicting constraints, the generator produces valid instance data. Otherwise, the generator produces an unsatisfiable core which included all contradicting constraints and generates a counter example by removing one constraint from the core. The generator can potentially produce many instances if the concrete clafers are not fully specialized. The generator produces different instances on-demand. With these capabilities, the instance generator can be used for debugging models: checking the consistency of the model and detecting under- and overconstraining of the model. The instance generator can also be used programmatically via API (the command line and interactive session interfaces only use the API).";
      buildType = "Simple";
    };
    components = {
      "claferIG" = {
        depends  = [
          (hsPkgs.array)
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.process)
          (hsPkgs.HUnit)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
          (hsPkgs.QuickCheck)
          (hsPkgs.transformers)
          (hsPkgs.data-stringmap)
          (hsPkgs.cmdargs)
          (hsPkgs.executable-path)
          (hsPkgs.haskeline)
          (hsPkgs.HaXml)
          (hsPkgs.json-builder)
          (hsPkgs.string-conversions)
          (hsPkgs.test-framework)
          (hsPkgs.test-framework-hunit)
          (hsPkgs.test-framework-quickcheck2)
          (hsPkgs.test-framework-th)
          (hsPkgs.clafer)
        ];
      };
      exes = {
        "claferIG" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.clafer)
            (hsPkgs.claferIG)
            (hsPkgs.data-stringmap)
            (hsPkgs.cmdargs)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.executable-path)
            (hsPkgs.filepath)
            (hsPkgs.haskeline)
            (hsPkgs.HaXml)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.process)
            (hsPkgs.transformers)
            (hsPkgs.json-builder)
            (hsPkgs.string-conversions)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.QuickCheck)
            (hsPkgs.HUnit)
          ];
        };
      };
      tests = {
        "test-suite" = {
          depends  = [
            (hsPkgs.array)
            (hsPkgs.base)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            (hsPkgs.transformers)
            (hsPkgs.data-stringmap)
            (hsPkgs.cmdargs)
            (hsPkgs.executable-path)
            (hsPkgs.haskeline)
            (hsPkgs.HaXml)
            (hsPkgs.json-builder)
            (hsPkgs.string-conversions)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-quickcheck2)
            (hsPkgs.test-framework-th)
            (hsPkgs.clafer)
            (hsPkgs.claferIG)
          ];
        };
      };
    };
  }