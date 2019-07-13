{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "core-text"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "© 2018-2019 Operational Dynamics Consulting Pty Ltd, and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "https://github.com/oprdyn/unbeliever#readme";
      url = "";
      synopsis = "A text type based on a finger tree over UTF-8 fragments";
      description = "A data type for text, built as a finger tree over UTF-8 text fragments.\n\nThe main type and its usage are described at \"Core.Text.Rope\" in this\npackage.\n\nThis is part of a library intended to ease interoperability and assist in\nbuilding command-line programs, both tools and longer-running daemons.\nA list of features and some background to the library's design is contained\nin the\n<https://github.com/oprdyn/unbeliever/blob/master/README.markdown README>\non GitHub.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.deepseq)
          (hsPkgs.fingertree)
          (hsPkgs.hashable)
          (hsPkgs.prettyprinter)
          (hsPkgs.prettyprinter-ansi-terminal)
          (hsPkgs.template-haskell)
          (hsPkgs.text)
          (hsPkgs.text-short)
          ];
        };
      };
    }