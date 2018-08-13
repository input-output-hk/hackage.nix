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
      specVersion = "1.20";
      identifier = {
        name = "uploadtest";
        version = "0.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "uploadtest@example.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Upload test";
      description = "Upload test description";
      buildType = "Simple";
    };
    components = {
      "uploadtest" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }