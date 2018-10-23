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
        name = "regex-base";
        version = "0.93.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "http://sourceforge.net/projects/lazy-regex";
      url = "http://darcs.haskell.org/packages/regex-unstable/regex-base/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "Interface API for regex-posix,pcre,parsec,tdfa,dfa";
      buildType = "Simple";
    };
    components = {
      "regex-base" = {
        depends  = if flags.newbase
          then [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
            (hsPkgs.array)
          ]
          else if flags.splitbase
            then [
              (hsPkgs.base)
              (hsPkgs.mtl)
              (hsPkgs.containers)
              (hsPkgs.bytestring)
              (hsPkgs.array)
            ]
            else [
              (hsPkgs.base)
              (hsPkgs.mtl)
            ];
      };
    };
  }