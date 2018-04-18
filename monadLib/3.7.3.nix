{ compiler, flags ? {}, hsPkgs, pkgs, system }:
let
    _flags = {
      base3 = false;
    } // flags;
    in {
      package = {
        specVersion = "1.2";
        identifier = {
          name = "monadLib";
          version = "3.7.3";
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
        monadLib = {
          depends  = [ hsPkgs.base ];
        };
      };
    }