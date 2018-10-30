{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      buildexamples = false;
      executepipe = false;
      executeshell = false;
    };
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gnuplot";
        version = "0.5.5.2";
      };
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
        depends  = [
          (hsPkgs.filepath)
          (hsPkgs.temporary)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.utility-ht)
          (hsPkgs.data-accessor-transformers)
          (hsPkgs.data-accessor)
          (hsPkgs.transformers)
          (hsPkgs.semigroups)
          (hsPkgs.deepseq)
          (hsPkgs.process)
          (hsPkgs.time)
          (hsPkgs.base)
        ];
      };
      exes = {
        "gnuplot-demo" = {
          depends  = pkgs.lib.optionals (flags.buildexamples) [
            (hsPkgs.gnuplot)
            (hsPkgs.time)
            (hsPkgs.array)
            (hsPkgs.filepath)
            (hsPkgs.base)
          ];
        };
      };
    };
  }