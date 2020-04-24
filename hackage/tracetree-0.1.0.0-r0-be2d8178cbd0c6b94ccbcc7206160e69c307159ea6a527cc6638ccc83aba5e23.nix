{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "ttrender" = {
          depends = (pkgs.lib).optionals (flags.ttrender) [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."colour" or ((hsPkgs.pkgs-errors).buildDepError "colour"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."diagrams-cairo" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-cairo"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-contrib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-contrib"))
            (hsPkgs."SVGFonts" or ((hsPkgs.pkgs-errors).buildDepError "SVGFonts"))
            (hsPkgs."tracetree" or ((hsPkgs.pkgs-errors).buildDepError "tracetree"))
            ];
          buildable = if flags.ttrender then true else false;
          };
        };
      };
    }