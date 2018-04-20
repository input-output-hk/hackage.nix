{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ismtp";
          version = "1.0.2";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Fast, incremental ESMTP sessions";
        description = "This library provides fast, incremental SMTP sessions, so you can\ncontrol each aspect of the session.  It uses iteratees and\nblaze-builder for fast I/O.";
        buildType = "Simple";
      };
      components = {
        ismtp = {
          depends  = [
            hsPkgs.attoparsec
            hsPkgs.attoparsec-enumerator
            hsPkgs.base
            hsPkgs.blaze-builder
            hsPkgs.bytestring
            hsPkgs.containers
            hsPkgs.dnscache
            hsPkgs.enumerator
            hsPkgs.network-fancy
            hsPkgs.stm
            hsPkgs.transformers
          ];
        };
      };
    }