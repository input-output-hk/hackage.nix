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
      specVersion = "1.10";
      identifier = {
        name = "c2ats";
        version = "0.1.0.1";
      };
      license = "GPL-3.0-only";
      copyright = "2016 Kiwamu Okabe";
      maintainer = "kiwamu@debian.or.jp";
      author = "Kiwamu Okabe";
      homepage = "https://github.com/metasepi/c2ats#readme";
      url = "";
      synopsis = "Translate C code into ATS";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.language-c)
          (hsPkgs.containers)
          (hsPkgs.pretty)
          (hsPkgs.regex-posix)
        ];
      };
      exes = {
        "c2ats" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.c2ats)
          ];
        };
      };
      tests = {
        "c2ats-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.HUnit)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-hunit)
            (hsPkgs.test-framework-th)
            (hsPkgs.c2ats)
          ];
        };
      };
    };
  }