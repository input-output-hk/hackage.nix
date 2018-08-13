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
        name = "yesod-csp";
        version = "0.1.1.0";
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
      "yesod-csp" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.yesod-core)
          (hsPkgs.semigroups)
          (hsPkgs.network-uri)
          (hsPkgs.yesod)
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
          ];
        };
      };
    };
  }