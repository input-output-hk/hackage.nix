{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      newbase = true;
      splitbase = true;
    };
    package = {
      specVersion = "1.2";
      identifier = {
        name = "regex-posix";
        version = "0.94.2";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2007, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "http://sourceforge.net/projects/lazy-regex";
      url = "http://darcs.haskell.org/packages/regex-unstable/regex-posix/";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "The posix regex backend for regex-base";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = if flags.newbase
          then [
            (hsPkgs.regex-base)
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.bytestring)
          ]
          else if flags.splitbase
            then [
              (hsPkgs.regex-base)
              (hsPkgs.base)
              (hsPkgs.array)
              (hsPkgs.containers)
              (hsPkgs.bytestring)
            ]
            else [
              (hsPkgs.regex-base)
              (hsPkgs.base)
            ];
      };
    };
  }