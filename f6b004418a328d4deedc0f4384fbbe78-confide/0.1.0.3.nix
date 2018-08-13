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
        name = "confide";
        version = "0.1.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "2018 Alex Milkov";
      maintainer = "amilkov3@gmail.com";
      author = "Alex Milkov";
      homepage = "https://github.com/amilkov3/confide";
      url = "";
      synopsis = "derive typeclass instances for decoding types from HOCON conf";
      description = "";
      buildType = "Simple";
    };
    components = {
      "confide" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deiko-config)
          (hsPkgs.exceptions)
          (hsPkgs.text)
        ];
      };
      tests = {
        "confide-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.confide)
            (hsPkgs.deiko-config)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.text)
          ];
        };
      };
    };
  }