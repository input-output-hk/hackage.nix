{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {
      base3 = false;
    } // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2";
        identifier = {
          name = "monadLib";
          version = "3.6.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Iavor S. Diatchki";
        homepage = "http://wiki.github.com/yav/monadlib";
        url = "";
        synopsis = "A collection of monad transformers.";
        description = "A collection of monad transformers.";
        buildType = "Simple";
      };
      components = {
        "monadLib" = {
          depends  = [ hsPkgs.base ];
        };
      };
    }