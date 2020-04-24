{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {
      buildexamples = false;
      executepipe = false;
      executeshell = false;
      };
    package = {
      specVersion = "1.8";
      identifier = { name = "gnuplot"; version = "0.5.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Gnuplot";
      url = "http://code.haskell.org/gnuplot/";
      synopsis = "2D and 3D plots using gnuplot";
      description = "This is a wrapper to gnuplot\nwhich lets you create 2D and 3D plots.\n\nStart a simple session with @make ghci@.\nThis loads the module \"Graphics.Gnuplot.Simple\"\nwhich is ready for use in GHCi.\nIt does not address all fancy gnuplot features\nin order to stay simple.\nFor more sophisticated plots,\nespecially batch generated graphics,\nI recommend \"Graphics.Gnuplot.Advanced\".\nThis module contains also an overview\nof the hierarchy of objects.\n\nExamples for using this interface can be found in the \"Demo\" module.\nIn order to compile this and install an example data file,\nuse the Cabal flag @buildExamples@:\n\n> \$ cabal install -fbuildExamples gnuplot\n\nWith the Cabal flags executePipe and executeShell\nyou can switch to more convenient\nbut probably less portable ways\nof feeding gnuplot with a script.\n\nAlternative packages: @plot@, @HPlot@, @Chart@, @textPlot@, @easyplot@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."temporary" or ((hsPkgs.pkgs-errors).buildDepError "temporary"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."data-accessor-transformers" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor-transformers"))
          (hsPkgs."data-accessor" or ((hsPkgs.pkgs-errors).buildDepError "data-accessor"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "gnuplot-demo" = {
          depends = (pkgs.lib).optionals (flags.buildexamples) [
            (hsPkgs."gnuplot" or ((hsPkgs.pkgs-errors).buildDepError "gnuplot"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildexamples then true else false;
          };
        };
      };
    }