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
        name = "main-tester";
        version = "0.1.0.0";
      };
      license = "Apache-2.0";
      copyright = "2018 Yuji Yamamoto";
      maintainer = "whosekiteneverfly@gmail.com";
      author = "Yuji Yamamoto";
      homepage = "https://gitlab.com/igrep/main-tester#readme";
      url = "";
      synopsis = "Capture stdout/stderr/exit code, and replace stdin of your main function.";
      description = "See README.md for detail.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.directory)
        ];
      };
      tests = {
        "main-tester-doctest" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
        "main-tester-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.main-tester)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.hspec-core)
            (hsPkgs.QuickCheck)
            (hsPkgs.text)
          ];
        };
      };
    };
  }