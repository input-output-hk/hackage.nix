{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "spawn";
          version = "0.2";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Tiny library for joinable computations / threads with results.";
        description = "Spawn a concurrent 'IO' computation and later demand its result.  Tiny API\nand implementation.";
        buildType = "Simple";
      };
      components = {
        "spawn" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }