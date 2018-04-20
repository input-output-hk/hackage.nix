{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.6";
        identifier = {
          name = "hs-vcard";
          version = "0.1";
        };
        license = "BSD-3-Clause";
        copyright = "(c) 2011 Spearhead Development, L.L.C.";
        maintainer = "Michael Schade <michael@spearheaddev.com>";
        author = "Spearhead Development, L.L.C.";
        homepage = "http://qrcard.us/";
        url = "";
        synopsis = "Implements the RFC 2426 vCard 3.0 spec";
        description = "Implements the RFC 2426 vCard 3.0 spec";
        buildType = "Simple";
      };
      components = {
        hs-vcard = {
          depends  = [
            hsPkgs.base
            hsPkgs.old-locale
            hsPkgs.time
          ];
        };
      };
    }