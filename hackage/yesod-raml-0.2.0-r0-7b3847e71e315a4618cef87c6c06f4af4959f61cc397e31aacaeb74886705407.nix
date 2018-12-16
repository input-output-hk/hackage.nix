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
        name = "yesod-raml";
        version = "0.2.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.yaml)
          (hsPkgs.yesod-core)
          (hsPkgs.template-haskell)
          (hsPkgs.network-uri)
          (hsPkgs.regex-posix)
          (hsPkgs.th-lift)
          (hsPkgs.data-default)
        ];
      };
      tests = {
        "test-routes" = {
          depends = [
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
            (hsPkgs.th-lift)
            (hsPkgs.vector)
            (hsPkgs.data-default)
          ];
        };
      };
    };
  }