{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.4";
        identifier = {
          name = "ivar-simple";
          version = "0.1.0.0";
        };
        license = "MIT";
        copyright = "(c) 2008, 2009 Bertram Felgenhauer";
        maintainer = "Bertram Felgenhauer <int-e@gmx.de>";
        author = "";
        homepage = "";
        url = "";
        synopsis = "Write once concurrency primitives.";
        description = "@IVar@s are write-once variables.\n\nThey can be read, an operation that will block until a value was written\nto the variable. They can be written to exactly once.";
        buildType = "Simple";
      };
      components = {
        "ivar-simple" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }