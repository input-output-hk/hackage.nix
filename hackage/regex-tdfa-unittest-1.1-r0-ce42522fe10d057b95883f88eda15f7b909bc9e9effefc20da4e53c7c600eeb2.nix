{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "regex-tdfa-unittest";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2009, Christopher Kuklewicz";
      maintainer = "TextRegexLazy@personal.mightyreason.com";
      author = "Christopher Kuklewicz";
      homepage = "";
      url = "";
      synopsis = "Unit tests for the regex-tdfa";
      description = "Apply regex-posix-unittest tests to regex-tdfa";
      buildType = "Simple";
    };
    components = {
      exes = {
        "regex-tdfa-unittest" = {
          depends  = [
            (hsPkgs.regex-base)
            (hsPkgs.base)
            (hsPkgs.regex-tdfa)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.array)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }