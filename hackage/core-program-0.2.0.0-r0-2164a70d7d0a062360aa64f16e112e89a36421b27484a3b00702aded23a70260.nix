{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "core-program"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2018-2019 Operational Dynamics Consulting Pty Ltd, and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "https://github.com/oprdyn/unbeliever#readme";
      url = "";
      synopsis = "Opinionated Haskell Interoperability";
      description = "A library to help build command-line programs, both tools and\nlonger-running daemons.\n\nA description of this package, a list of features, and some background\nto its design is contained in the\n<https://github.com/oprdyn/unbeliever/blob/master/README.markdown README>\non GitHub.\n\nSee \"Core.Program.Execute\" to get started.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.async)
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.chronologique)
          (hsPkgs.core-data)
          (hsPkgs.core-text)
          (hsPkgs.directory)
          (hsPkgs.exceptions)
          (hsPkgs.hashable)
          (hsPkgs.hourglass)
          (hsPkgs.mtl)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.safe-exceptions)
          (hsPkgs.stm)
          (hsPkgs.template-haskell)
          (hsPkgs.terminal-size)
          (hsPkgs.text)
          (hsPkgs.text-short)
          (hsPkgs.transformers)
          (hsPkgs.unix)
          ];
        };
      };
    }