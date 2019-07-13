{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "unbeliever"; version = "0.10.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2018-2019 Operational Dynamics Consulting Pty Ltd, and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "https://github.com/oprdyn/unbeliever#readme";
      url = "";
      synopsis = "Opinionated Haskell Interoperability";
      description = "A library to help build command-line programs, both tools and\nlonger-running daemons.\n\nA description of this package, a list of features, and some background\nto its design is contained in the\n<https://github.com/oprdyn/unbeliever/blob/master/README.markdown README>\non GitHub.\n\nAn ancillary aim of this library is to facilitate interoperability. A\nsingle batteries-included package would make this easier, but the resulting\ndependency footprint would be considerable. The code is thus spread across\nseveral packages:\n\n* __core-text__\n* __core-data__\n* __core-program__\n\nUseful starting points in the documentation are <../core-program/docs/Core-Program-Execute.html Core.Program.Execute\">\nand <https://hackage.haskell.org/package/core-text/docs/Core-Text-Rope.html Core.Text.Rope>.";
      buildType = "Simple";
      };
    components = {
      tests = {
        "check" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.core-data)
            (hsPkgs.core-program)
            (hsPkgs.core-text)
            (hsPkgs.fingertree)
            (hsPkgs.hspec)
            (hsPkgs.safe-exceptions)
            (hsPkgs.text)
            (hsPkgs.text-short)
            ];
          };
        };
      benchmarks = {
        "performance" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.core-data)
            (hsPkgs.core-program)
            (hsPkgs.core-text)
            (hsPkgs.gauge)
            (hsPkgs.text)
            ];
          };
        };
      };
    }