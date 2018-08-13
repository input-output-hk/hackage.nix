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
        name = "yesod-raml-bin";
        version = "0.1.0";
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
            (hsPkgs.yesod-markdown)
            (hsPkgs.shakespeare)
            (hsPkgs.blaze-markup)
            (hsPkgs.blaze-html)
            (hsPkgs.containers)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.yaml)
            (hsPkgs.bytestring)
            (hsPkgs.template-haskell)
          ];
        };
      };
    };
  }