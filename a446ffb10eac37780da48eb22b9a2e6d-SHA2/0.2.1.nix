{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "SHA2";
          version = "0.2.1";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009 University of Tromsø";
        maintainer = "Svein Ove Aas <svein.ove@aas.no>";
        author = "Svein Ove Aas <svein.ove@aas.no>";
        homepage = "";
        url = "";
        synopsis = "Fast, incremental SHA hashing for bytestrings";
        description = "A zero-copy binding to Aaron Gifford's SHA implementation, including a copy of that implementation";
        buildType = "Simple";
      };
      components = {
        "SHA2" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.monads-tf
            hsPkgs.transformers
            hsPkgs.AES
          ];
        };
      };
    }