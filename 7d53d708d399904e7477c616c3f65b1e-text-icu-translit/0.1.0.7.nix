{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "text-icu-translit";
        version = "0.1.0.7";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Antonio Nikishaev";
      maintainer = "Antonio Nikishaev <me@lelf.lu>";
      author = "Antonio Nikishaev";
      homepage = "";
      url = "";
      synopsis = "ICU transliteration";
      description = "Bindings to the transliteration features by the\nInternational Components for Unicode (ICU) library";
      buildType = "Simple";
    };
    components = {
      "text-icu-translit" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
        ];
        libs = [
          (pkgs.icuuc)
        ] ++ (if system.isWindows
          then [
            (pkgs.icuin)
            (pkgs.icudt)
          ]
          else [
            (pkgs.icui18n)
            (pkgs.icudata)
          ]);
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.text-icu)
            (hsPkgs.text-icu-translit)
            (hsPkgs.QuickCheck)
            (hsPkgs.test-framework)
            (hsPkgs.test-framework-quickcheck2)
          ];
        };
      };
    };
  }