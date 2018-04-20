{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "Hermes";
          version = "0.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "Copyright (c) 2010, University of Tromsø";
        maintainer = "Svein Ove Aas <svein.ove@aas.no>";
        author = "Svein Ove Aas <svein.ove@aas.no>";
        homepage = "";
        url = "";
        synopsis = "Message-based middleware layer";
        description = "A middleware providing best-effort unicast, remote procedure calls,\nprobabilistic (and slow!) broadcast and automatic membership\nmanagement, meant for small to medium networks";
        buildType = "Simple";
      };
      components = {
        Hermes = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.cereal
            hsPkgs.stm
            hsPkgs.hslogger
            hsPkgs.old-time
            hsPkgs.containers
            hsPkgs.AES
            hsPkgs.SHA2
            hsPkgs.RSA
            hsPkgs.network
            hsPkgs.yjtools
            hsPkgs.random
            hsPkgs.monads-tf
            hsPkgs.syb
            hsPkgs.unamb
            hsPkgs.time
            hsPkgs.transformers
          ];
        };
      };
    }