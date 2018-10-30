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
        name = "yesod-raml-bin";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "junji.hashimoto";
      homepage = "";
      url = "";
      synopsis = "The raml helper executable.";
      description = "Provides html documentation and route file generator";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yesod-raml-bin" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yesod-raml)
            (hsPkgs.yesod-raml-docs)
            (hsPkgs.yesod-raml-mock)
            (hsPkgs.yesod-markdown)
            (hsPkgs.yesod-core)
            (hsPkgs.http-types)
            (hsPkgs.shakespeare)
            (hsPkgs.blaze-markup)
            (hsPkgs.blaze-html)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.template-haskell)
            (hsPkgs.warp)
            (hsPkgs.wai)
          ];
        };
      };
    };
  }