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
        name = "yesod-raml-mock";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "junji.hashimoto";
      homepage = "";
      url = "";
      synopsis = "A mock-handler generator library from RAML.";
      description = "A mock-handler generator library from RAML.";
      buildType = "Simple";
    };
    components = {
      "yesod-raml-mock" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-core)
          (hsPkgs.yesod-raml)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.yaml)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
        ];
      };
      tests = {
        "test" = {
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
            (hsPkgs.yesod-raml-mock)
            (hsPkgs.network-uri)
            (hsPkgs.regex-posix)
            (hsPkgs.vector)
            (hsPkgs.yesod-test)
          ];
        };
      };
    };
  }