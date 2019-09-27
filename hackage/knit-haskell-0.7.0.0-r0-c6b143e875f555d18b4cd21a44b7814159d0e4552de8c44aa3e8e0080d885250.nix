let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."Glob" or (buildDepError "Glob"))
          (hsPkgs."aeson-pretty" or (buildDepError "aeson-pretty"))
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."base64-bytestring" or (buildDepError "base64-bytestring"))
          (hsPkgs."blaze-colonnade" or (buildDepError "blaze-colonnade"))
          (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or (buildDepError "case-insensitive"))
          (hsPkgs."colonnade" or (buildDepError "colonnade"))
          (hsPkgs."constraints" or (buildDepError "constraints"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
          (hsPkgs."diagrams-svg" or (buildDepError "diagrams-svg"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."http-types" or (buildDepError "http-types"))
          (hsPkgs."hvega" or (buildDepError "hvega"))
          (hsPkgs."logging-effect" or (buildDepError "logging-effect"))
          (hsPkgs."lucid" or (buildDepError "lucid"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."network" or (buildDepError "network"))
          (hsPkgs."network-uri" or (buildDepError "network-uri"))
          (hsPkgs."pandoc" or (buildDepError "pandoc"))
          (hsPkgs."polysemy" or (buildDepError "polysemy"))
          (hsPkgs."polysemy-plugin" or (buildDepError "polysemy-plugin"))
          (hsPkgs."polysemy-zoo" or (buildDepError "polysemy-zoo"))
          (hsPkgs."prettyprinter" or (buildDepError "prettyprinter"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."random-fu" or (buildDepError "random-fu"))
          (hsPkgs."random-source" or (buildDepError "random-source"))
          (hsPkgs."svg-builder" or (buildDepError "svg-builder"))
          (hsPkgs."text" or (buildDepError "text"))
          (hsPkgs."time" or (buildDepError "time"))
          ];
        buildable = true;
        };
      tests = {
        "ErrorExample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."hvega" or (buildDepError "hvega"))
            (hsPkgs."knit-haskell" or (buildDepError "knit-haskell"))
            (hsPkgs."polysemy" or (buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (buildDepError "polysemy-plugin"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "MtlExample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."hvega" or (buildDepError "hvega"))
            (hsPkgs."knit-haskell" or (buildDepError "knit-haskell"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."polysemy" or (buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (buildDepError "polysemy-plugin"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "MultiDocExample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."hvega" or (buildDepError "hvega"))
            (hsPkgs."knit-haskell" or (buildDepError "knit-haskell"))
            (hsPkgs."polysemy" or (buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (buildDepError "polysemy-plugin"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "RandomExample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."colonnade" or (buildDepError "colonnade"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."hvega" or (buildDepError "hvega"))
            (hsPkgs."knit-haskell" or (buildDepError "knit-haskell"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."plots" or (buildDepError "plots"))
            (hsPkgs."polysemy" or (buildDepError "polysemy"))
            (hsPkgs."polysemy-RandomFu" or (buildDepError "polysemy-RandomFu"))
            (hsPkgs."polysemy-plugin" or (buildDepError "polysemy-plugin"))
            (hsPkgs."random-fu" or (buildDepError "random-fu"))
            (hsPkgs."random-source" or (buildDepError "random-source"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        "SimpleExample" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."blaze-html" or (buildDepError "blaze-html"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."here" or (buildDepError "here"))
            (hsPkgs."hvega" or (buildDepError "hvega"))
            (hsPkgs."knit-haskell" or (buildDepError "knit-haskell"))
            (hsPkgs."plots" or (buildDepError "plots"))
            (hsPkgs."polysemy" or (buildDepError "polysemy"))
            (hsPkgs."polysemy-plugin" or (buildDepError "polysemy-plugin"))
            (hsPkgs."text" or (buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }