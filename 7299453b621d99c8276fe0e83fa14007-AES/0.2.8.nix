{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "AES";
          version = "0.2.8";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2009 University of Tromsø";
        maintainer = "Svein Ove Aas <svein.ove@aas.no>";
        author = "Svein Ove Aas <svein.ove@aas.no>";
        homepage = "";
        url = "";
        synopsis = "Fast AES encryption/decryption for bytestrings";
        description = "A zero-copy binding to Brian Gladman's AES implementation, including a copy of that implementation";
        buildType = "Simple";
      };
      components = {
        "AES" = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.monads-tf
            hsPkgs.transformers
            hsPkgs.random
            hsPkgs.cereal
          ];
        };
      };
    }