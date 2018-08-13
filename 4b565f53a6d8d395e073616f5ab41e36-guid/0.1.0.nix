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
        name = "guid";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "2015 brady.ouren <brady.ouren@gmail.com>";
      maintainer = "brady.ouren <brady.ouren@gmail.com>";
      author = "brady.ouren <brady.ouren@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "A simple wrapper around uuid";
      description = "A simple wrapper around uuid";
      buildType = "Simple";
    };
    components = {
      "guid" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.uuid)
          (hsPkgs.uuid-types)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.guid)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }