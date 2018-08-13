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
      specVersion = "1.6.0.1";
      identifier = {
        name = "cqrs";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Bardur Arantsson <bardur@scientician.net>";
      author = "Bardur Arantsson";
      homepage = "";
      url = "";
      synopsis = "Command-Query Responsibility Segregation";
      description = "Haskell implementation of the CQRS architectural pattern.\nAn SQLite3-based backend is included.";
      buildType = "Simple";
    };
    components = {
      "cqrs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.data-default)
          (hsPkgs.direct-sqlite)
          (hsPkgs.random)
          (hsPkgs.transformers)
        ];
      };
    };
  }