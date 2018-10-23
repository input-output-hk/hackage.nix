{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "regex-compat";
        version = "0.71";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2006, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "http://sourceforge.net/projects/lazy-regex";
      url = "";
      synopsis = "Replaces/Enhances Text.Regex";
      description = "One module layer over regex-posix to replace Text.Regex";
      buildType = "Custom";
    };
    components = {
      "regex-compat" = {
        depends  = [
          (hsPkgs.regex-base)
          (hsPkgs.regex-posix)
          (hsPkgs.base)
        ];
      };
    };
  }