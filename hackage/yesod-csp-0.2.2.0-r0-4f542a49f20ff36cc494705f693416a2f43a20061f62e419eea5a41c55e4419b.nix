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
        name = "yesod-csp";
        version = "0.2.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "robertjflong@gmail.com";
      author = "Bob Long";
      homepage = "";
      url = "";
      synopsis = "Add CSP headers to Yesod apps";
      description = "Add CSP headers to Yesod apps. This helps reduce exposure to XSS attacks and bad assets.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.yesod-core)
          (hsPkgs.semigroups)
          (hsPkgs.network-uri)
          (hsPkgs.yesod)
          (hsPkgs.mono-traversable)
          (hsPkgs.attoparsec)
          (hsPkgs.template-haskell)
          (hsPkgs.syb)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-csp)
            (hsPkgs.yesod-test)
            (hsPkgs.semigroups)
            (hsPkgs.yesod)
            (hsPkgs.hspec)
            (hsPkgs.network-uri)
            (hsPkgs.attoparsec)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }