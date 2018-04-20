{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "1.2.3";
        identifier = {
          name = "HsSVN";
          version = "0.4";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <pho at cielonegro dot org>";
        author = "PHO <pho at cielonegro dot org>";
        homepage = "http://cielonegro.org/HsSVN.html";
        url = "";
        synopsis = "(Part of) Subversion binding for Haskell";
        description = "HsSVN is a (part of) Subversion binding for Haskell. Currently it\ncan do most things related to the Subversion FS but others are\nleft uncovered.";
        buildType = "Configure";
      };
      components = {
        HsSVN = {
          depends  = [
            hsPkgs.base
            hsPkgs.bytestring
            hsPkgs.mtl
            hsPkgs.stm
          ];
        };
      };
    }