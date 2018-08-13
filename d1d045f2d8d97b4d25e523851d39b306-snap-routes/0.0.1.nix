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
        name = "snap-routes";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "ajnsit@gmail.com";
      author = "Anupam Jain";
      homepage = "";
      url = "";
      synopsis = "Typesafe URLs for Snap applications.";
      description = "Provides easy to use typesafe URLs for Snap Applications.";
      buildType = "Simple";
    };
    components = {
      "snap-routes" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.template-haskell)
          (hsPkgs.containers)
          (hsPkgs.random)
          (hsPkgs.path-pieces)
          (hsPkgs.bytestring)
          (hsPkgs.http-types)
          (hsPkgs.blaze-builder)
          (hsPkgs.mime-types)
          (hsPkgs.filepath)
          (hsPkgs.snap)
        ];
      };
    };
  }