{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.0";
      identifier = { name = "dhrun"; version = "1.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "fre@freux.fr";
      author = "Valentin Reis";
      homepage = "";
      url = "";
      synopsis = "Dhall/YAML configurable concurrent integration test executor.";
      description = "`dhrun` starts a list of (Unix) processes, monitors the standard streams for patterns that should be expected or avoided, kills the processes when criteria are met and exits accordingly. It is configured using either [Dhall](https://dhall-lang.org/) or [YAML](https://yaml.org/). See the [README.md](https://github.com/freuk/dhrun) file for details.";
      buildType = "Simple";
      };
    components = {
      sublibs = {
        "dhrun-lib" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.unix)
            (hsPkgs.time)
            (hsPkgs.ansi-terminal)
            (hsPkgs.conduit)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.unliftio-core)
            (hsPkgs.conduit-extra)
            (hsPkgs.process)
            (hsPkgs.dhall)
            (hsPkgs.protolude)
            (hsPkgs.yaml)
            ];
          };
        };
      exes = {
        "dhrun" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.dhall)
            (hsPkgs.optparse-applicative)
            (hsPkgs.protolude)
            (hsPkgs.editor-open)
            ];
          };
        };
      tests = {
        "Tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.protolude)
            (hsPkgs.dhall)
            (hsPkgs.yaml)
            (hsPkgs.aeson)
            (hsPkgs.filepath)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.unliftio)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-hspec)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.generic-random)
            (hsPkgs.quickcheck-text)
            (hsPkgs.hspec)
            (hsPkgs.dhrun-lib)
            (hsPkgs.Glob)
            ];
          };
        };
      };
    }