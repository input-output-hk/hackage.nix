{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.10";
        identifier = {
          name = "checksum";
          version = "0.0";
        };
        license = "BSD-3-Clause";
        copyright = "";
        maintainer = "haskell@henning-thielemann.de";
        author = "Henning Thielemann";
        homepage = "http://hub.darcs.net/thielema/checksum";
        url = "";
        synopsis = "Compute and verify checksums of ISBN, IBAN, etc.";
        description = "Compute and verify checksums of various identifiers,\nsuch as IBAN, ISBN, EAN, Germany's Citizen Card.";
        buildType = "Simple";
      };
      components = {
        checksum = {
          depends  = [
            hsPkgs.explicit-exception
            hsPkgs.utility-ht
            hsPkgs.base
          ];
        };
      };
    }