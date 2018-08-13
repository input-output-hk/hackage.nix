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
        name = "servant-db";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 (c) Anton Gushcha";
      maintainer = "ncrashed@gmail.com";
      author = "Anton Gushcha";
      homepage = "";
      url = "";
      synopsis = "Servant types for defining API with relational DBs";
      description = "";
      buildType = "Simple";
    };
    components = {
      "servant-db" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.servant)
        ];
      };
    };
  }