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
      specVersion = "1.18";
      identifier = {
        name = "wai-routes";
        version = "0.9.5";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "https://ajnsit.github.io/wai-routes/";
      url = "";
      synopsis = "Typesafe URLs for Wai applications.";
      description = "Provides easy to use typesafe URLs for Wai Applications. See README for more information. Also see examples/ directory for usage examples.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.wai-extra)
          (hsPkgs.wai-app-static)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.mtl)
          (hsPkgs.aeson)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.path-pieces)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.monad-loops)
          (hsPkgs.case-insensitive)
          (hsPkgs.mime-types)
          (hsPkgs.filepath)
          (hsPkgs.cookie)
          (hsPkgs.data-default-class)
          (hsPkgs.vault)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.wai)
            (hsPkgs.aeson)
            (hsPkgs.hspec)
            (hsPkgs.hspec-wai)
            (hsPkgs.hspec-wai-json)
            (hsPkgs.text)
            (hsPkgs.wai-routes)
          ];
        };
      };
    };
  }