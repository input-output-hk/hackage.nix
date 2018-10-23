{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "html-email-validate";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Konstantin Zudov, 2015";
      maintainer = "konstantin@anche.no";
      author = "Konstantin Zudov";
      homepage = "";
      url = "";
      synopsis = "Validating an email address against HTML standard";
      description = "The library allows to validate and parse an email address\nas it's defined in <https://html.spec.whatwg.org/multipage/forms.html#valid-e-mail-address HTML standard>.\nNote that HTML specification of a valid email address is a\n'willful violation' of RFC 5322. If you want to validate\nan address against RFC 5322 you should use <https://hackage.haskell.org/package/email-validate email-validate>.";
      buildType = "Simple";
    };
    components = {
      "html-email-validate" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.attoparsec)
          (hsPkgs.text)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.attoparsec)
            (hsPkgs.hspec)
            (hsPkgs.text)
            (hsPkgs.regex-pcre-builtin)
            (hsPkgs.html-email-validate)
            (hsPkgs.QuickCheck)
          ];
        };
      };
      benchmarks = {
        "bench" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.html-email-validate)
            (hsPkgs.text)
            (hsPkgs.criterion)
          ];
        };
      };
    };
  }