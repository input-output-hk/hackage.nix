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
    flags = { ttrender = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "tracetree"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright 2015 Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries";
      homepage = "";
      url = "";
      synopsis = "Visualize Haskell data structures as edge-labeled trees";
      description = "The tracetree library can be used to conveniently write\nHaskell data structures as trees represented as JSON\nfiles. These JSON files can then be inspected with any\nJSON viewer; the JSON viewer's functionality to collapse\npart of the JSON tree can be particularly convenient when\nexploring large objects.\n\nAdditionally, the ttrender executable can be used to render\nthese JSON trees as .svg or .png files, and provides\nvarious command line flags for controlling the layout of\nthe tree (colour, orientation, hiding nodes, etc.).\n\nThe tracetree library and ttrender executable are\nindependent components; if you don't want to add the\ndependency on tracetree to your project, you can just\ngenerate the .JSON files directly in your code; the format\nis not complicated (indeed, you can create them by hand\nor post-process previously exported .JSON files).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bifunctors" or (buildDepError "bifunctors"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."json" or (buildDepError "json"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          ];
        };
      exes = {
        "ttrender" = {
          depends = (pkgs.lib).optionals (flags.ttrender) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."colour" or (buildDepError "colour"))
            (hsPkgs."json" or (buildDepError "json"))
            (hsPkgs."optparse-applicative" or (buildDepError "optparse-applicative"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            (hsPkgs."parsec" or (buildDepError "parsec"))
            (hsPkgs."diagrams-cairo" or (buildDepError "diagrams-cairo"))
            (hsPkgs."diagrams-lib" or (buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-contrib" or (buildDepError "diagrams-contrib"))
            (hsPkgs."SVGFonts" or (buildDepError "SVGFonts"))
            (hsPkgs."tracetree" or (buildDepError "tracetree"))
            ];
          };
        };
      };
    }