{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      newbase = true;
      splitbase = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "regex-compat-tdfa";
        version = "0.95.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Christopher Kuklewicz 2006\n(c) shelarcy 2012";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Christopher Kuklewicz";
      homepage = "http://darcsden.com/shelarcy/regex-compat-tdfa";
      url = "http://darcsden.com/shelarcy/regex-compat-tdfa";
      synopsis = "Unicode Support version of Text.Regex, using regex-tdfa";
      description = "One module layer over regex-tdfa to replace Text.Regex.\n\nregex-compat can't uses Unicode characters correctly because\nof using regex-posix. This is not good for Unicode users.\n\nI modified regex-compat to use regex-tdfa for solving today's\nproblem.";
      buildType = "Simple";
    };
    components = {
      "regex-compat-tdfa" = {
        depends  = if flags.newbase
          then [
            (hsPkgs.base)
            (hsPkgs.regex-base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.array)
          ]
          else if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.regex-base)
              (hsPkgs.regex-tdfa)
              (hsPkgs.array)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.regex-base)
              (hsPkgs.regex-tdfa)
            ];
      };
    };
  }