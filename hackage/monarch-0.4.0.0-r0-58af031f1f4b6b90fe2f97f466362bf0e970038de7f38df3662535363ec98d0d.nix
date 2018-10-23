{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "monarch";
        version = "0.4.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      author = "Noriyuki OHKAWA <n.ohkawa@gmail.com>";
      homepage = "https://github.com/notogawa/monarch";
      url = "";
      synopsis = "Monadic interface for TokyoTyrant.";
      description = "This package provides simple monadic interface for TokyoTyrant.";
      buildType = "Simple";
    };
    components = {
      "monarch" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.conduit)
          (hsPkgs.network-conduit)
          (hsPkgs.binary)
          (hsPkgs.msgpack)
          (hsPkgs.transformers)
          (hsPkgs.network)
          (hsPkgs.pool-conduit)
          (hsPkgs.monad-control)
          (hsPkgs.lifted-base)
        ];
      };
      tests = {
        "specs" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.network-conduit)
            (hsPkgs.binary)
            (hsPkgs.msgpack)
            (hsPkgs.network)
            (hsPkgs.pool-conduit)
            (hsPkgs.monad-control)
            (hsPkgs.lifted-base)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
          ];
        };
      };
    };
  }