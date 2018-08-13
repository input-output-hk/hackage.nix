{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {
      dev = false;
    } // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.18";
      identifier = {
        name = "persistent-migration";
        version = "0.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Brandon Chinn <brandonchinn178@gmail.com>";
      author = "Brandon Chinn <brandonchinn178@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Manual migrations for the persistent library";
      description = "Manual migrations for the persistent library.";
      buildType = "Simple";
    };
    components = {
      "persistent-migration" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.fgl)
          (hsPkgs.persistent)
          (hsPkgs.mtl)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.unordered-containers)
        ];
      };
      tests = {
        "persistent-migration-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.conduit)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.persistent)
            (hsPkgs.persistent-migration)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
          ];
        };
        "persistent-migration-integration" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.exceptions)
            (hsPkgs.monad-logger)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.persistent)
            (hsPkgs.persistent-migration)
            (hsPkgs.persistent-postgresql)
            (hsPkgs.persistent-template)
            (hsPkgs.resource-pool)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-golden)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.temporary)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }