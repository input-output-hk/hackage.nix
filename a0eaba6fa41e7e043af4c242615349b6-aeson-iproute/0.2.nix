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
        name = "aeson-iproute";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "lanablack@amok.cc";
      author = "Lana Black";
      homepage = "https://github.com/greydot/aeson-iproute";
      url = "";
      synopsis = "Aeson instances for iproute types";
      description = "Aeson instances for iproute types.";
      buildType = "Simple";
    };
    components = {
      "aeson-iproute" = {
        depends  = [
          (hsPkgs.aeson)
          (hsPkgs.base)
          (hsPkgs.iproute)
          (hsPkgs.text)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }