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
        name = "servant-generic";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017 Patrick Chilton";
      maintainer = "chpatrick@gmail.com";
      author = "Patrick Chilton";
      homepage = "";
      url = "";
      synopsis = "Specify Servant APIs with records.";
      description = "See README.";
      buildType = "Simple";
    };
    components = {
      "servant-generic" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.servant)
          (hsPkgs.servant-server)
        ];
      };
      tests = {
        "example-basic" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.servant)
            (hsPkgs.servant-server)
            (hsPkgs.servant-generic)
            (hsPkgs.text)
            (hsPkgs.warp)
          ];
        };
      };
    };
  }