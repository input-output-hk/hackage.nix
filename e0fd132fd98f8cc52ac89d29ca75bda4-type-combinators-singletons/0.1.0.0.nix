{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "type-combinators-singletons";
          version = "0.1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) Justin Le 2017";
        maintainer = "justin@jle.im";
        author = "Justin Le";
        homepage = "https://github.com/mstksg/type-combinators-singletons";
        url = "";
        synopsis = "Interop between /type-combinators/ and /singletons/.";
        description = "Conversions between datatypes in /type-combinators/ and\nsingletons from /singletons/.";
        buildType = "Simple";
      };
      components = {
        "type-combinators-singletons" = {
          depends  = [
            hsPkgs.base
            hsPkgs.type-combinators
            hsPkgs.singletons
          ];
        };
      };
    }