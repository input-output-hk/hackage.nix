{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "concurrent-output";
          version = "1.9.0";
        };
        license = "BSD-2-Clause";
        copyright = "2015-2017 Joey Hess, 2009 Joachim Breitner";
        maintainer = "Joey Hess <id@joeyh.name>";
        author = "Joey Hess, Joachim Breitner";
        homepage = "";
        url = "";
        synopsis = "Ungarble output from several threads or commands";
        description = "Lets multiple threads and external processes concurrently output to the\nconsole, without it getting all garbled up.\n\nBuilt on top of that is a way of defining multiple output regions,\nwhich are automatically laid out on the screen and can be individually\nupdated by concurrent threads. Can be used for progress displays etc.\n\n<<https://joeyh.name/code/concurrent-output/demo2.gif>>";
        buildType = "Simple";
      };
      components = {
        concurrent-output = {
          depends  = [
            hsPkgs.base
            hsPkgs.base
            hsPkgs.text
            hsPkgs.async
            hsPkgs.stm
            hsPkgs.process
            hsPkgs.directory
            hsPkgs.transformers
            hsPkgs.exceptions
            hsPkgs.ansi-terminal
            hsPkgs.terminal-size
          ] ++ pkgs.lib.optional (!system.isWindows) hsPkgs.unix;
        };
      };
    }