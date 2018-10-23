{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "concurrent-output";
        version = "1.7.0";
      };
      license = "BSD-2-Clause";
      copyright = "2015 Joey Hess, 2009 Joachim Breitner";
      maintainer = "Joey Hess <id@joeyh.name>";
      author = "Joey Hess, Joachim Breitner";
      homepage = "";
      url = "";
      synopsis = "Ungarble output from several threads";
      description = "Provides a simple interface for writing concurrent programs that\nneed to output a lot of status messages to the console, or display\nmultiple progress bars for different activities at the same time,\nor concurrently run external commands that output to the console.\n\nBuilt on top of that is a way of defining multiple output regions,\nwhich are automatically laid out on the screen and can be individually\nupdated. Can be used for progress displays etc.\n\n<<https://joeyh.name/code/concurrent-output/demo2.gif>>";
      buildType = "Simple";
    };
    components = {
      "concurrent-output" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.async)
          (hsPkgs.stm)
          (hsPkgs.process)
          (hsPkgs.directory)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
          (hsPkgs.ansi-terminal)
          (hsPkgs.terminal-size)
        ] ++ pkgs.lib.optional (!system.isWindows) (hsPkgs.unix);
      };
    };
  }