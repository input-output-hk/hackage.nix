{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ghc-events-analyze"; version = "0.2.6"; };
      license = "BSD-3-Clause";
      copyright = "2013-2014 Well-Typed LLP";
      maintainer = "edsko@well-typed.com";
      author = "Edsko de Vries, Duncan Coutts, Mikolaj Konarski";
      homepage = "";
      url = "";
      synopsis = "Analyze and visualize event logs";
      description = "ghc-events-analyze is a simple Haskell profiling tool that\nuses GHC's eventlog system. It helps with some profiling\nuse cases that are not covered by the existing GHC\nprofiling modes or tools. It has two major features:\n\n1. While ThreadScope shows CPU activity across all your\ncores, ghc-events-analyze shows CPU activity across all\nyour Haskell threads.\n\n2. It lets you label periods of time during program\nexecution (by instrumenting your code with special trace\ncalls) and then lets you visualize those time periods or\nget statistics on them.\n\nIt is very useful for profiling code when ghc's normal\nprofiling mode is not available, or when using profiling\nmode would perturb the code too much. It is also useful\nwhen you want time-profiling information with a breakdown\nover time rather than totals for the whole run.\n\nThe blog post\n<http://www.well-typed.com/blog/2014/02/ghc-events-analyze/ Performance profiling with ghc-events-analyze>\ndescribes the motivation in more detail.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "ghc-events-analyze" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."blaze-svg" or ((hsPkgs.pkgs-errors).buildDepError "blaze-svg"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."diagrams-lib" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-lib"))
            (hsPkgs."diagrams-svg" or ((hsPkgs.pkgs-errors).buildDepError "diagrams-svg"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc-events" or ((hsPkgs.pkgs-errors).buildDepError "ghc-events"))
            (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-pcre-builtin" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre-builtin"))
            (hsPkgs."SVGFonts" or ((hsPkgs.pkgs-errors).buildDepError "SVGFonts"))
            (hsPkgs."th-lift" or ((hsPkgs.pkgs-errors).buildDepError "th-lift"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = true;
          };
        };
      };
    }