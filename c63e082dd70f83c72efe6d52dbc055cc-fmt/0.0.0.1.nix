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
        name = "fmt";
        version = "0.0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "yom@artyom.me";
      author = "Artyom";
      homepage = "http://github.com/aelve/fmt";
      url = "";
      synopsis = "Nice formatting library";
      description = "Nice formatting library";
      buildType = "Simple";
    };
    components = {
      "fmt" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.text-format)
        ];
      };
    };
  }