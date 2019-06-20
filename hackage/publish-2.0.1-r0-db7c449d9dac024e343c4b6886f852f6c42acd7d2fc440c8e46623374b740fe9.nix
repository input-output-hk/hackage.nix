{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "publish"; version = "2.0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2016-2019 Operational Dynamics Consulting Pty Ltd, and Others";
      maintainer = "Andrew Cowie <andrew@operationaldynamics.com>";
      author = "Andrew Cowie <andrew@operationaldynamics.com>";
      homepage = "https://github.com/oprdyn/publish#readme";
      url = "";
      synopsis = "Publishing tools for papers, books, and presentations";
      description = "Tools for rendering markdown-centric documents into PDFs.\n\nA description of this package, a list of features, and some background\nto its design is contained in the\n<https://github.com/oprdyn/publish/blob/master/README.markdown README>\non GitHub.\n\nThe main program, @render@, is available via a Docker image at\n<https://hub.docker.com/r/oprdyn/publish-render docker.io/oprdyn/publish-render:latest>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "format" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chronologique)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hinotify)
            (hsPkgs.megaparsec)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.typed-process)
            (hsPkgs.unbeliever)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            ];
          };
        "render" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chronologique)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hinotify)
            (hsPkgs.megaparsec)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.typed-process)
            (hsPkgs.unbeliever)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      tests = {
        "check" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.chronologique)
            (hsPkgs.deepseq)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hinotify)
            (hsPkgs.hspec)
            (hsPkgs.megaparsec)
            (hsPkgs.pandoc)
            (hsPkgs.pandoc-types)
            (hsPkgs.template-haskell)
            (hsPkgs.text)
            (hsPkgs.typed-process)
            (hsPkgs.unbeliever)
            (hsPkgs.unix)
            (hsPkgs.unordered-containers)
            ];
          };
        };
      };
    }