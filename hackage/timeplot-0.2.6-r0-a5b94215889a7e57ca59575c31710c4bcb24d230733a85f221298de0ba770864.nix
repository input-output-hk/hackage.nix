{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { splitbase = true; gtk = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "timeplot"; version = "0.2.6"; };
      license = "BSD-3-Clause";
      copyright = "Eugene Kirpichov, 2009";
      maintainer = "Eugene Kirpichov <ekirpichov@gmail.com>";
      author = "Eugene Kirpichov <ekirpichov@gmail.com>";
      homepage = "http://haskell.org/haskellwiki/Timeplot";
      url = "";
      synopsis = "A tool for visualizing time series from log files.";
      description = "A tool for visualizing time series from log files.\nReads an input file with events in different \"tracks\" and draws a diagram for\neach track, where a diagram may be one of 8 types. See --help for help and the\nhomepage for a bigger description, examples and a tutorial.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "tplot" = {
          depends = [
            (hsPkgs.Chart)
            (hsPkgs.cairo)
            (hsPkgs.bytestring)
            (hsPkgs.bytestring-lexing)
            (hsPkgs.strptime)
            (hsPkgs.time)
            (hsPkgs.containers)
            (hsPkgs.colour)
            (hsPkgs.data-accessor)
            (hsPkgs.data-accessor-template)
            (hsPkgs.haskell98)
            (hsPkgs.regex-tdfa)
            ] ++ [ (hsPkgs.base) ];
          };
        };
      };
    }