{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "ismtp";
          version = "1.0.0";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2010 Ertugrul Söylemez";
        maintainer = "Ertugrul Söylemez <es@ertes.de>";
        author = "Ertugrul Söylemez <es@ertes.de>";
        homepage = "";
        url = "";
        synopsis = "Incremental SMTP sessions";
        description = "This library provides incremental SMTP sessions, so you can control\neach aspect of the session.  It also provides a small DNS cache for\nMX records.";
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