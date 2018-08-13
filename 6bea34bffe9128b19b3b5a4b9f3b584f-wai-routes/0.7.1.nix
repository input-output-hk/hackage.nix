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
      specVersion = "1.18";
      identifier = {
        name = "wai-routes";
        version = "0.7.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "https://github.com/ajnsit/wai-routes";
      url = "";
      synopsis = "Typesafe URLs for Wai applications.";
      description = "Provides easy to use typesafe URLs for Wai Applications. See README for more information. Also see examples/ directory for usage examples.";
      buildType = "Simple";
    };
    components = {
      "wai-routes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
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
        ];
      };
    };
  }