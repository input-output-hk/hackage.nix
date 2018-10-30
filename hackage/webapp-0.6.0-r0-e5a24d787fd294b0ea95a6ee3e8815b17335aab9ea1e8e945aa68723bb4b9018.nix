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
      specVersion = "1.24";
      identifier = {
        name = "webapp";
        version = "0.6.0";
      };
      license = "MIT";
      copyright = "(c) 2015 Nathaniel Symer";
      maintainer = "Nathaniel Symer <nate@symer.io>";
      author = "Nathaniel Symer <nate@symer.io>";
      homepage = "https://github.com/natesymer/webapp";
      url = "";
      synopsis = "Haskell web app framework based on WAI & Warp";
      description = "See README.md";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.stm)
          (hsPkgs.transformers)
          (hsPkgs.wai)
          (hsPkgs.warp)
          (hsPkgs.warp-tls)
          (hsPkgs.network)
          (hsPkgs.regex-pcre-builtin)
          (hsPkgs.regex-base)
          (hsPkgs.http-types)
          (hsPkgs.unix)
          (hsPkgs.blaze-builder)
          (hsPkgs.optparse-applicative)
          (hsPkgs.case-insensitive)
          (hsPkgs.vault)
        ];
      };
      tests = {
        "test-webapp" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.network)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.http-types)
            (hsPkgs.hspec)
            (hsPkgs.webapp)
          ];
        };
      };
    };
  }