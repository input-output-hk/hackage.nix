{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {
      buildexamples = false;
      executepipe = false;
      executeshell = false;
    };
    package = {
      specVersion = "2.2";
      identifier = { name = "gnuplot"; version = "0.5.7"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://www.haskell.org/haskellwiki/Gnuplot";
      url = "http://code.haskell.org/gnuplot/";
      synopsis = "2D and 3D plots using gnuplot";
      description = "This is a wrapper to gnuplot\nwhich lets you create 2D and 3D plots.\n\nStart a simple session with @cabal repl@.\nIf not already loaded, call @:module Graphics.Gnuplot.Simple@\nin order to load \"Graphics.Gnuplot.Simple\"\nwhich is ready for use in GHCi.\nIt does not address all fancy gnuplot features\nin order to stay simple.\nFor more sophisticated plots,\nespecially batch generated graphics,\nI recommend \"Graphics.Gnuplot.Advanced\".\nThis module contains also an overview\nof the hierarchy of objects.\n\nExamples for using this interface can be found in the \"Demo\" module.\nIn order to compile this and install an example data file,\nuse the Cabal flag @buildExamples@:\n\n> $ cabal install -fbuildExamples gnuplot\n\nWith the Cabal flags executePipe and executeShell\nyou can switch to more convenient\nbut probably less portable ways\nof feeding gnuplot with a script.\n\nAlternative packages: @plot@, @HPlot@, @Chart@, @textPlot@, @easyplot@";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
          (hsPkgs."data-accessor-transformers" or (errorHandler.buildDepError "data-accessor-transformers"))
          (hsPkgs."data-accessor" or (errorHandler.buildDepError "data-accessor"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."semigroups" or (errorHandler.buildDepError "semigroups"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optionals (!flags.executepipe) (pkgs.lib.optional (flags.executeshell) (hsPkgs."shell-utility" or (errorHandler.buildDepError "shell-utility")));
        buildable = true;
      };
      exes = {
        "gnuplot-demo" = {
          depends = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs."gnuplot" or (errorHandler.buildDepError "gnuplot"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."array" or (errorHandler.buildDepError "array"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."utility-ht" or (errorHandler.buildDepError "utility-ht"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
          ];
          buildable = if flags.buildexamples then true else false;
        };
      };
    };
  }