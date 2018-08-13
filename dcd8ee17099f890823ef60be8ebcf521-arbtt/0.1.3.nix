{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "arbtt";
        version = "0.1.3";
      };
      license = "LicenseRef-GPL";
      copyright = "Joachim Breitner 2009";
      maintainer = "Joachim Breitner <mail@joachim-breitner.de>";
      author = "Joachim Breitner <mail@joachim-breitner.de>";
      homepage = "http://www.joachim-breitner.de/projects#arbtt";
      url = "";
      synopsis = "Automatic Rule-Based Time Tracker";
      description = "arbtt is a background daemon that stores which windows are open, which one\nhas the focus and how long since your last action (and possbly more sources\nlater), and stores this. It is also a program that will, based on\nexpressive rules you specify, derive what you were doing, and what for.\n\nWARNING: The log file might contain very sensitive private data. Make sure\nyou understand the consequences of a full-time logger and be careful with this\ndata.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "arbtt-capture" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.mtl)
            (hsPkgs.time)
            (hsPkgs.unix)
            (hsPkgs.X11)
          ];
          libs = [ (pkgs.Xss) ];
        };
        "arbtt-stats" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.containers)
            (hsPkgs.pcre-light)
            (hsPkgs.tabular)
          ];
        };
      };
    };
  }