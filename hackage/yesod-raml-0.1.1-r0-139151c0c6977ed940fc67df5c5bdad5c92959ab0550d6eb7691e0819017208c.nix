{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = { utils = false; };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "yesod-raml";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "Junji Hashimoto";
      homepage = "";
      url = "";
      synopsis = "RAML style route definitions for Yesod";
      description = "RAML style route definitions for Yesod";
      buildType = "Simple";
    };
    components = {
      "yesod-raml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.yaml)
          (hsPkgs.yesod-core)
          (hsPkgs.template-haskell)
          (hsPkgs.network-uri)
          (hsPkgs.regex-posix)
        ];
      };
      exes = {
        "raml-utils" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.containers)
            (hsPkgs.yaml)
            (hsPkgs.yesod-core)
            (hsPkgs.template-haskell)
            (hsPkgs.optparse-applicative)
            (hsPkgs.yesod-raml)
            (hsPkgs.network-uri)
            (hsPkgs.regex-posix)
          ];
        };
      };
      tests = {
        "test-routes" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.aeson)
            (hsPkgs.unordered-containers)
            (hsPkgs.containers)
            (hsPkgs.yaml)
            (hsPkgs.yesod-core)
            (hsPkgs.template-haskell)
            (hsPkgs.hspec)
            (hsPkgs.yesod-raml)
            (hsPkgs.network-uri)
            (hsPkgs.regex-posix)
          ];
        };
      };
    };
  }