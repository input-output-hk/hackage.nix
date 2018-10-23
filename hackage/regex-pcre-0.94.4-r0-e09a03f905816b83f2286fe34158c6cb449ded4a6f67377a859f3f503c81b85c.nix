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
      specVersion = "1.2.3";
      identifier = {
        name = "regex-pcre";
        version = "0.94.4";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "http://hackage.haskell.org/package/regex-pcre";
      url = "http://code.haskell.org/regex-pcre/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "The PCRE backend to accompany regex-base, see www.pcre.org";
      buildType = "Simple";
    };
    components = {
      "regex-pcre" = {
        depends  = if flags.newbase
          then [
            (hsPkgs.base)
            (hsPkgs.regex-base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ]
          else if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.regex-base)
              (hsPkgs.array)
              (hsPkgs.containers)
              (hsPkgs.bytestring)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.regex-base)
            ];
        libs = [ (pkgs."pcre") ];
      };
    };
  }