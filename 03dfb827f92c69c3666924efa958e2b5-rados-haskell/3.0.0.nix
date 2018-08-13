{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      atomic_writes = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.10";
      identifier = {
        name = "rados-haskell";
        version = "3.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Anchor Hosting";
      maintainer = "pingu@ponies.io";
      author = "Christian Marie";
      homepage = "github";
      url = "";
      synopsis = "librados haskell bindings";
      description = "These bindings do not cover the entire API, they support\nread, write, stat, creation, and unlinking with shared\nlocks.\n\nYou can perform these actions with combinations of sync,\nasync, and atomic execution.\n\nThe \"System.Rados.Monadic\" module is recommended for\nsafety/ease of use.\n\nThe \"System.Rados.Base\" module is possibly more flexible\nbut requires you to clean up your own resources and track\na lot of state.\n\nNote: To use atomic writes, you must build with the\n/atomic_writes/ build flag.\n\nStability: These bindings are not as polished as they could be, but\nare in production use at Anchor Hosting as of Jan 2014.";
      buildType = "Simple";
    };
    components = {
      "rados-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.containers)
          (hsPkgs.uuid)
          (hsPkgs.async)
          (hsPkgs.hspec)
        ];
        libs = [ (pkgs.rados) ];
      };
      tests = {
        "check" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.hspec)
            (hsPkgs.HUnit)
            (hsPkgs.mtl)
            (hsPkgs.uuid)
            (hsPkgs.async)
            (hsPkgs.rados-haskell)
          ];
          libs = [ (pkgs.rados) ];
        };
      };
      benchmarks = {
        "async" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.rados-haskell)
          ];
        };
        "concurrency" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.criterion)
            (hsPkgs.transformers)
            (hsPkgs.mtl)
            (hsPkgs.async)
            (hsPkgs.rados-haskell)
          ];
        };
      };
    };
  }