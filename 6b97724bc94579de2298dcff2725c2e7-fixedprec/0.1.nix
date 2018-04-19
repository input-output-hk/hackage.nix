{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      package = {
        specVersion = "1.8";
        identifier = {
          name = "fixedprec";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2013 Peter Selinger";
        maintainer = "selinger@mathstat.dal.ca";
        author = "Peter Selinger";
        homepage = "";
        url = "";
        synopsis = "A fixed-precision real number type";
        description = "A reasonably efficient implementation of arbitrary-but-fixed precision\nreal numbers. This is inspired by, and partly based on,\nData.Number.Fixed and Data.Number.CReal, but more efficient.";
        buildType = "Simple";
      };
      components = {
        fixedprec = {
          depends  = [ hsPkgs.base ];
        };
      };
    }