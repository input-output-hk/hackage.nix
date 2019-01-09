{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "regex-posix-unittest"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "";
      url = "";
      synopsis = "Unit tests for the plaform's Posix regex library";
      description = "Most platforms have a buggy system regex library and this probes the bugs by using the regex-posix package, run with \"regex-posix-unittest\"";
      buildType = "Simple";
      };
    components = {
      exes = {
        "regex-posix-unittest" = {
          depends = [
            (hsPkgs.regex-base)
            (hsPkgs.base)
            (hsPkgs.regex-posix)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.mtl)
            ];
          };
        };
      };
    }