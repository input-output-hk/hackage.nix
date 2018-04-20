{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HsSVN";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <phonohawk at ps dot sakura dot ne dot jp>";
        author = "PHO <phonohawk at ps dot sakura dot ne dot jp>";
        homepage = "http://ccm.sherry.jp/HsSVN/";
        url = "";
        synopsis = "(Part of) Subversion binding for Haskell";
        description = "HsSVN is a (part of) Subversion binding for Haskell. Currently it\ncan do most things related to the Subversion FS but others are\nleft uncovered.";
        buildType = "Custom";
      };
      components = {
        HsSVN = {
          depends  = [
            hsPkgs.base
            hsPkgs.mtl
          ];
        };
      };
    }