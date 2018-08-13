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
        name = "trasa-server";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2017 Kyle McKean";
      maintainer = "mckean.kylej@gmail.com";
      author = "Kyle McKean";
      homepage = "https://github.com/haskell-trasa/trasa#readme";
      url = "";
      synopsis = "Type safe web server";
      description = "WAI integration for trasa";
      buildType = "Simple";
    };
    components = {
      "trasa-server" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.wai)
          (hsPkgs.http-types)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.mtl)
          (hsPkgs.trasa)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.trasa)
            (hsPkgs.trasa-server)
            (hsPkgs.tasty)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bytestring)
            (hsPkgs.text)
            (hsPkgs.vinyl)
            (hsPkgs.doctest)
            (hsPkgs.warp)
            (hsPkgs.http-client)
          ];
        };
      };
    };
  }