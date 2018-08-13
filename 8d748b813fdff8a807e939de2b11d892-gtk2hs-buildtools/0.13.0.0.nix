{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      closuresignals = true;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "gtk2hs-buildtools";
        version = "0.13.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "(c) 2001-2010 The Gtk2Hs Team";
      maintainer = "gtk2hs-devel@lists.sourceforge.net";
      author = "Axel Simon, Duncan Coutts, Manuel Chakravaty";
      homepage = "http://projects.haskell.org/gtk2hs/";
      url = "";
      synopsis = "Tools to build the Gtk2Hs suite of User Interface libraries.";
      description = "This package provides a set of helper programs necessary to\nbuild the Gtk2Hs suite of libraries. These tools include\na modified c2hs binding tool that is used to generate\nFFI declarations, a tool to build a type hierarchy that\nmirrors the C type hierarchy of GObjects found in glib,\nand a generator for signal declarations that are used\nto call back from C to Haskell. These tools are not needed\nto actually run Gtk2Hs programs.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "gtk2hsTypeGen" = {
          depends  = [ (hsPkgs.base) ];
        };
        "gtk2hsHookGenerator" = {
          depends  = [ (hsPkgs.base) ];
        };
        "gtk2hsC2hs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.pretty)
            (hsPkgs.filepath)
            (hsPkgs.random)
          ] ++ pkgs.lib.optional (compiler.isGhc && compiler.version.ge "7.7") (hsPkgs.hashtables);
          build-tools = [
            (hsPkgs.buildPackages.alex)
            (hsPkgs.buildPackages.happy)
          ];
        };
      };
    };
  }