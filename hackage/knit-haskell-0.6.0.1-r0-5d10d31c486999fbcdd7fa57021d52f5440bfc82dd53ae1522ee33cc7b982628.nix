{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "knit-haskell"; version = "0.6.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2019 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "";
      url = "";
      synopsis = "a minimal Rmarkdown sort-of-thing for haskell, by way of Pandoc";
      description = "knit-haskell is a beginning attempt at bringing some of the benefits of\nRmarkdown to Haskell.\nIt includes an effects stack\n(using <https://github.com/isovector/polysemy#readme polysemy> rather than mtl)\nwhich includes logging,\na simplified interface to Pandoc and various writer-like effects to\nintersperse document building with regular code.\nVarious helper functions are provided to simplify common operations,\nmaking it especially straightforward to build\nan HTML document from bits of markdown,\nlatex and <http://hackage.haskell.org/package/lucid Lucid>\nor <http://hackage.haskell.org/package/blaze-html Blaze> html.\nSupport is also included for including\n<http://hackage.haskell.org/package/hvega hvega> visualizations\nand diagrams from the <https://archives.haskell.org/projects.haskell.org/diagrams/ diagrams>\npackage.\nMore information is available in the <https://github.com/adamConnerSax/knit-haskell/blob/master/Readme.md readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.aeson-pretty)
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.blaze-colonnade)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.colonnade)
          (hsPkgs.containers)
          (hsPkgs.constraints)
          (hsPkgs.directory)
          (hsPkgs.diagrams-lib)
          (hsPkgs.diagrams-svg)
          (hsPkgs.Glob)
          (hsPkgs.http-client)
          (hsPkgs.http-client-tls)
          (hsPkgs.http-types)
          (hsPkgs.network)
          (hsPkgs.network-uri)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.random)
          (hsPkgs.blaze-html)
          (hsPkgs.hvega)
          (hsPkgs.logging-effect)
          (hsPkgs.mtl)
          (hsPkgs.polysemy)
          (hsPkgs.polysemy-plugin)
          (hsPkgs.polysemy-zoo)
          (hsPkgs.prettyprinter)
          (hsPkgs.lucid)
          (hsPkgs.pandoc)
          (hsPkgs.random-fu)
          (hsPkgs.random-source)
          (hsPkgs.svg-builder)
          ];
        };
      tests = {
        "SimpleExample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.containers)
            (hsPkgs.here)
            (hsPkgs.hvega)
            (hsPkgs.knit-haskell)
            (hsPkgs.plots)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.text)
            ];
          };
        "ErrorExample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.containers)
            (hsPkgs.here)
            (hsPkgs.hvega)
            (hsPkgs.knit-haskell)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.text)
            ];
          };
        "MultiDocExample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.containers)
            (hsPkgs.here)
            (hsPkgs.hvega)
            (hsPkgs.knit-haskell)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.text)
            ];
          };
        "MtlExample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.containers)
            (hsPkgs.here)
            (hsPkgs.hvega)
            (hsPkgs.knit-haskell)
            (hsPkgs.mtl)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.text)
            ];
          };
        "RandomExample" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.colonnade)
            (hsPkgs.containers)
            (hsPkgs.here)
            (hsPkgs.hvega)
            (hsPkgs.knit-haskell)
            (hsPkgs.mtl)
            (hsPkgs.polysemy)
            (hsPkgs.polysemy-plugin)
            (hsPkgs.polysemy-RandomFu)
            (hsPkgs.random-fu)
            (hsPkgs.random-source)
            (hsPkgs.text)
            ];
          };
        };
      };
    }