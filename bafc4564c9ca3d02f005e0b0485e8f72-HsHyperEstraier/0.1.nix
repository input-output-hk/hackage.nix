{ compiler, flags ? {}, hsPkgs, pkgconfPkgs, pkgs, system }:
let
    _flags = {} // flags;
    in {
      flags = _flags;
      package = {
        specVersion = "0";
        identifier = {
          name = "HsHyperEstraier";
          version = "0.1";
        };
        license = "LicenseRef-PublicDomain";
        copyright = "";
        maintainer = "PHO <phonohawk at ps dot sakura dot ne dot jp>";
        author = "PHO <phonohawk at ps dot sakura dot ne dot jp>";
        homepage = "http://ccm.sherry.jp/HsHyperEstraier/";
        url = "";
        synopsis = "HyperEstraier binding for Haskell";
        description = "HsHyperEstraier is a HyperEstraier binding for\nHaskell. HyperEstraier is an embeddable full text search engine\nwhich is supposed to be independent to any particular natural\nlanguages.";
        buildType = "Custom";
      };
      components = {
        "HsHyperEstraier" = {
          depends  = [
            hsPkgs.base
            hsPkgs.encoding
            hsPkgs.network
          ];
        };
      };
    }