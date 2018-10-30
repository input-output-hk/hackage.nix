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
        name = "yesod-raml-docs";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "junji.hashimoto@gmail.com";
      author = "junji.hashimoto";
      homepage = "";
      url = "";
      synopsis = "A html documentation generator library for RAML.";
      description = "A html documentation generator library for RAML.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.yesod-raml)
          (hsPkgs.yesod-markdown)
          (hsPkgs.shakespeare)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.yaml)
          (hsPkgs.bytestring)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }