{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "HsHyperEstraier";
        version = "0.2";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
        ];
        pkgconfig = [
          (pkgconfPkgs.hyperestraier)
          (pkgconfPkgs.qdbm)
        ];
      };
    };
  }