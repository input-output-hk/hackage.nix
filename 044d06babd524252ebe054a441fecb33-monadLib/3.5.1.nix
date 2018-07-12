{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "monadLib";
          version = "3.5.1";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "diatchki@galois.com";
        author = "Iavor S. Diatchki";
        homepage = "http://www.purely-functional.net/monadLib";
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