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
        name = "t3-server";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "2016 Joe Vargas";
      maintainer = "http://github.com/jxv";
      author = "Joe Vargas";
      homepage = "";
      url = "";
      synopsis = "tic-tac-toe server";
      description = "Please see README.md";
      buildType = "Simple";
    };
    components = {
      "t3-server" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.aeson)
          (hsPkgs.safe)
          (hsPkgs.unordered-containers)
          (hsPkgs.containers)
          (hsPkgs.vector)
          (hsPkgs.time)
          (hsPkgs.case-insensitive)
          (hsPkgs.wai)
          (hsPkgs.async)
          (hsPkgs.mtl)
          (hsPkgs.stm)
          (hsPkgs.random)
          (hsPkgs.hashable)
          (hsPkgs.hashmap)
          (hsPkgs.either)
          (hsPkgs.t3-game)
          (hsPkgs.random)
          (hsPkgs.MonadRandom)
        ];
      };
    };
  }