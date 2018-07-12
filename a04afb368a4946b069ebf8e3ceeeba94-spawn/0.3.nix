{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "spawn";
          version = "0.3";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
        author = "Keegan McAllister <mcallister.keegan@gmail.com>";
        homepage = "";
        url = "";
        synopsis = "Tiny library for concurrent computations";
        description = "Spawn a concurrent 'IO' computation and later demand its result.  Tiny API\nand implementation.\n\nNew in version 0.3:\n\n* Added functions @parMapIO@, @parMapIO_@, and @(|*|)@, which capture\ncommon use cases of @spawn@.\n\n* Updated code to avoid using deprecated functions with @base-4.3@ and\nlater (GHC 7.0 and later).  The old code is still used with older\n@base@ libraries.\n\n* Added public GitHub repository.";
        buildType = "Simple";
      };
      components = {
        "spawn" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }