{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "knit-haskell"; version = "0.7.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Adam Conner-Sax";
      maintainer = "adam_conner_sax@yahoo.com";
      author = "Adam Conner-Sax";
      homepage = "https://github.com/adamConnerSax/knit-haskell#readme";
      url = "";
      synopsis = "a minimal Rmarkdown sort-of-thing for haskell, by way of Pandoc";
      description = "knit-haskell is a beginning attempt at bringing some of the benefits of Rmarkdown to Haskell. It includes an effects stack (using <https://github.com/isovector/polysemy#readme polysemy> rather than mtl) which includes logging, a simplified interface to Pandoc and various writer-like effects to intersperse document building with regular code. Various helper functions are provided to simplify common operations, making it especially straightforward to build an HTML document from bits of markdown, latex and <http://hackage.haskell.org/package/lucid Lucid> or <http://hackage.haskell.org/package/blaze-html Blaze> html. Support is also included for including <http://hackage.haskell.org/package/hvega hvega> visualizations and diagrams from the <https://archives.haskell.org/projects.haskell.org/diagrams/ diagrams> package. More information is available in the <https://github.com/adamConnerSax/knit-haskell/blob/master/Readme.md readme>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
          (hsPkgs."aeson-pretty" or ((hsPkgs.pkgs-errors).buildDepError "aeson-pretty"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."blaze-colonnade" or ((hsPkgs.pkgs-errors).buildDepError "blaze-colonnade"))
          (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."colonnade" or ((hsPkgs.pkgs-errors).buildDepError "colonnade"))
          (hsPkgs."constraints" or ((hsPkgs.pkgs-errors).buildDepError "constraints"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-svg"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."http-client-tls" or ((hsPkgs.pkgs-errors).buildDepError "http-client-tls"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."hvega" or ((hsPkgs.pkgs-errors).buildDepError "hvega"))
          (hsPkgs."logging-effect" or ((hsPkgs.pkgs-errors).buildDepError "logging-effect"))
          (hsPkgs."lucid" or ((hsPkgs.pkgs-errors).buildDepError "lucid"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."network-uri" or ((hsPkgs.pkgs-errors).buildDepError "network-uri"))
          (hsPkgs."pandoc" or ((hsPkgs.pkgs-errors).buildDepError "pandoc"))
          (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
          (hsPkgs."polysemy-zoo" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-zoo"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
          (hsPkgs."random-source" or ((hsPkgs.pkgs-errors).buildDepError "random-source"))
          (hsPkgs."svg-builder" or ((hsPkgs.pkgs-errors).buildDepError "svg-builder"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "ErrorExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."here" or ((hsPkgs.pkgs-errors).buildDepError "here"))
            (hsPkgs."hvega" or ((hsPkgs.pkgs-errors).buildDepError "hvega"))
            (hsPkgs."knit-haskell" or ((hsPkgs.pkgs-errors).buildDepError "knit-haskell"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "MtlExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."here" or ((hsPkgs.pkgs-errors).buildDepError "here"))
            (hsPkgs."hvega" or ((hsPkgs.pkgs-errors).buildDepError "hvega"))
            (hsPkgs."knit-haskell" or ((hsPkgs.pkgs-errors).buildDepError "knit-haskell"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "MultiDocExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."here" or ((hsPkgs.pkgs-errors).buildDepError "here"))
            (hsPkgs."hvega" or ((hsPkgs.pkgs-errors).buildDepError "hvega"))
            (hsPkgs."knit-haskell" or ((hsPkgs.pkgs-errors).buildDepError "knit-haskell"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "RandomExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."colonnade" or ((hsPkgs.pkgs-errors).buildDepError "colonnade"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."here" or ((hsPkgs.pkgs-errors).buildDepError "here"))
            (hsPkgs."hvega" or ((hsPkgs.pkgs-errors).buildDepError "hvega"))
            (hsPkgs."knit-haskell" or ((hsPkgs.pkgs-errors).buildDepError "knit-haskell"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."plots" or ((hsPkgs.pkgs-errors).buildDepError "plots"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."polysemy-RandomFu" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-RandomFu"))
            (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
            (hsPkgs."random-fu" or ((hsPkgs.pkgs-errors).buildDepError "random-fu"))
            (hsPkgs."random-source" or ((hsPkgs.pkgs-errors).buildDepError "random-source"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        "SimpleExample" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."here" or ((hsPkgs.pkgs-errors).buildDepError "here"))
            (hsPkgs."hvega" or ((hsPkgs.pkgs-errors).buildDepError "hvega"))
            (hsPkgs."knit-haskell" or ((hsPkgs.pkgs-errors).buildDepError "knit-haskell"))
            (hsPkgs."plots" or ((hsPkgs.pkgs-errors).buildDepError "plots"))
            (hsPkgs."polysemy" or ((hsPkgs.pkgs-errors).buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or ((hsPkgs.pkgs-errors).buildDepError "polysemy-plugin"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }