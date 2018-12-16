{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = { old-locale = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "hslogger-reader";
        version = "1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ard.bates@gmail.com";
      author = "Alex Bates";
      homepage = "http://github.com/prophet-on-that/hslogger-reader";
      url = "";
      synopsis = "Parsing hslogger-produced logs.";
      description = "hslogger-reader provides a function to generate a parser for\n<http://hackage.haskell.org/package/hslogger hslogger>-produced logs\nfrom a hslogger format string (see \"System.Log.Formatter\"). The\naccompanying executable demonstrates parsing and computing with a\nlog file in constant memory.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
          (hsPkgs.hslogger)
        ] ++ (if flags.old-locale
          then [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [ (hsPkgs.time) ]);
      };
      exes = {
        "profiling" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hslogger-reader)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
          ];
        };
        "filter-logs" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hslogger-reader)
            (hsPkgs.text)
            (hsPkgs.attoparsec)
            (hsPkgs.hslogger)
            (hsPkgs.text-icu)
            (hsPkgs.optparse-applicative)
          ] ++ (if flags.old-locale
            then [
              (hsPkgs.time)
              (hsPkgs.old-locale)
            ]
            else [ (hsPkgs.time) ]);
        };
      };
    };
  }