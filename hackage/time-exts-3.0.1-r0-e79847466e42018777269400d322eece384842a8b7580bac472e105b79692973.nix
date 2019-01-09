{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "time-exts"; version = "3.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2013-2016 Enzo Haussecker";
      maintainer = "Enzo Haussecker <enzo@sovereign.io>";
      author = "Enzo Haussecker <enzo@sovereign.io>";
      homepage = "https://github.com/enzoh/time-exts";
      url = "";
      synopsis = "Yet another time library";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.attoparsec)
          (hsPkgs.base)
          (hsPkgs.bindings-DSL)
          (hsPkgs.deepseq)
          (hsPkgs.lens-simple)
          (hsPkgs.mtl)
          (hsPkgs.old-locale)
          (hsPkgs.random)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.tz)
          ];
        };
      tests = {
        "time-exts-unit-tests" = {
          depends = [
            (hsPkgs.attoparsec)
            (hsPkgs.base)
            (hsPkgs.bindings-DSL)
            (hsPkgs.deepseq)
            (hsPkgs.HUnit)
            (hsPkgs.ieee754)
            (hsPkgs.lens-simple)
            (hsPkgs.mtl)
            (hsPkgs.old-locale)
            (hsPkgs.QuickCheck)
            (hsPkgs.random)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.tz)
            ];
          };
        };
      };
    }