{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "hset";
          version = "2.2.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "s9gf4ult@gmail.com";
        author = "s9gf4ult";
        homepage = "https://bitbucket.org/s9gf4ult/hset";
        url = "";
        synopsis = "Primitive list with elements of unique types.";
        description = "";
        buildType = "Simple";
      };
      components = {
        hset = {
          depends  = [
            hsPkgs.base
            hsPkgs.deepseq
            hsPkgs.tagged
            hsPkgs.type-fun
          ];
        };
        tests = {
          test = {
            depends  = [
              hsPkgs.HUnit
              hsPkgs.base
              hsPkgs.hset
              hsPkgs.tagged
            ];
          };
        };
      };
    }