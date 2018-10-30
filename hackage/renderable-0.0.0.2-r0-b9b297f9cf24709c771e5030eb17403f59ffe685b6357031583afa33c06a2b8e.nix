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
        name = "renderable";
        version = "0.0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "efsubenovex@gmail.com";
      author = "Schell Scivally";
      homepage = "http://zyghost.com";
      url = "";
      synopsis = "Provides a nice API for rendering data types that change\nover time.";
      description = "Instances of Renderable conform to a simple API that makes their\nvisual representations composable through hashing and cacheing.\nAlso provided are some convenience functions for writing\nRenderable instances, as well as top level rendering functions.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.hashable)
        ];
      };
    };
  }