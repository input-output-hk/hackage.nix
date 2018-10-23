{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "wai-routes";
        version = "0.1";
      };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "https://github.com/ajnsit/wai-routes";
      url = "";
      synopsis = "This package provides typesafe URLs for Wai applications.";
      description = "This package provides typesafe URLs for Wai applications.";
      buildType = "Simple";
    };
    components = {
      "wai-routes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.wai)
          (hsPkgs.path-pieces)
          (hsPkgs.text)
          (hsPkgs.http-types)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }