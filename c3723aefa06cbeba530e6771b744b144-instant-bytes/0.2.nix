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
        name = "instant-bytes";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Renzo Carbonara 2015";
      maintainer = "renzo@carbonara.com.ar";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/instant-bytes";
      url = "";
      synopsis = "Generic Serial instances through instant-generics";
      description = "";
      buildType = "Simple";
    };
    components = {
      "instant-bytes" = {
        depends  = [
          (hsPkgs.bytes)
          (hsPkgs.base)
          (hsPkgs.instant-generics)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytes)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.instant-bytes)
            (hsPkgs.instant-generics)
          ];
        };
      };
    };
  }