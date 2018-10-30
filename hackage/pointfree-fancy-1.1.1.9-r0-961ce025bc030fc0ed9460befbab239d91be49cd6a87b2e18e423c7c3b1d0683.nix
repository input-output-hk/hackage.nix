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
      specVersion = "2.0";
      identifier = {
        name = "pointfree-fancy";
        version = "1.1.1.9";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Vanessa McHale <vamchale@gmail.com>";
      author = "Thomas Jäger";
      homepage = "";
      url = "";
      synopsis = "Tool for refactoring expressions into pointfree form";
      description = "The pointfree tool is a standalone command-line version of the pl\nplugin for lambdabot.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.pointfree-internal)
        ];
      };
      sublibs = {
        "pointfree-internal" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.array)
            (hsPkgs.containers)
            (hsPkgs.haskell-src-exts)
            (hsPkgs.transformers)
          ];
        };
      };
      exes = {
        "pointfree" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pointfree-internal)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.pointfree-internal)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
          ];
        };
      };
    };
  }