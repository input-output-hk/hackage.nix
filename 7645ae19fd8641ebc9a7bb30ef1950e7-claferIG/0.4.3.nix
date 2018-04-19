{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.18";
        identifier = {
          name = "claferIG";
          version = "0.4.3";
        };
        license = "MIT";
        copyright = "";
        maintainer = "Michal Antkiewicz <mantkiew@gsd.uwaterloo.ca>";
        author = "Jimmy Liang, Michal Antkiewicz, Luke Michael Brown";
        homepage = "http://clafer.org";
        url = "";
        synopsis = "claferIG is an interactive tool that generates instances of Clafer models.";
        description = "Clafer is a powerful (equivalent to first-order predicate logic) yet lightweight structural modeling language. Despite simplicity and conciseness of Clafer, writing correct models remains challenging due to hard-to-predict interactions among all constraints expressed in the model. Clafer instance generator (ClaferIG) is an interactive tool that generates instances and counter examples of concrete clafers in a Clafer model. If the concrete clafers do not have contradicting constraints, the generator produces valid instance data. Otherwise, the generator produces an unsatisfiable core which included all contradicting constraints and generates a counter example by removing one constraint from the core. The generator can potentially produce many instances if the concrete clafers are not fully specialized. The generator produces different instances on-demand. With these capabilities, the instance generator can be used for debugging models: checking the consistency of the model and detecting under- and overconstraining of the model. The instance generator can also be used programmatically via API (the command line and interactive session interfaces only use the API).";
        buildType = "Simple";
      };
      components = {
        claferIG = {
          depends  = [
            hsPkgs.array
            hsPkgs.base
            hsPkgs.containers
            hsPkgs.directory
            hsPkgs.filepath
            hsPkgs.process
            hsPkgs.transformers
            hsPkgs.mtl
            hsPkgs.parsec
            hsPkgs.data-stringmap
            hsPkgs.executable-path
            hsPkgs.haskeline
            hsPkgs.json-builder
            hsPkgs.string-conversions
            hsPkgs.transformers-compat
            hsPkgs.mtl-compat
            hsPkgs.clafer
          ] ++ [ hsPkgs.HaXml ];
        };
        exes = {
          claferIG = {
            depends  = [
              hsPkgs.base
              hsPkgs.containers
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.mtl
              hsPkgs.cmdargs
              hsPkgs.executable-path
              hsPkgs.haskeline
              hsPkgs.transformers-compat
              hsPkgs.mtl-compat
              hsPkgs.clafer
              hsPkgs.claferIG
            ];
          };
        };
        tests = {
          test-suite = {
            depends  = [
              hsPkgs.array
              hsPkgs.base
              hsPkgs.directory
              hsPkgs.filepath
              hsPkgs.transformers
              hsPkgs.HUnit
              hsPkgs.cmdargs
              hsPkgs.tasty
              hsPkgs.tasty-hunit
              hsPkgs.tasty-th
              hsPkgs.transformers-compat
              hsPkgs.clafer
              hsPkgs.claferIG
            ];
          };
        };
      };
    }