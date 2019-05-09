{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "HsHyperEstraier"; version = "0.3"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "PHO <pho at cielonegro dot org>";
      author = "PHO <pho at cielonegro dot org>";
      homepage = "http://cielonegro.org/HsHyperEstraier.html";
      url = "";
      synopsis = "HyperEstraier binding for Haskell";
      description = "HsHyperEstraier is a HyperEstraier binding for\nHaskell. HyperEstraier is an embeddable full text search engine\nwhich is supposed to be independent to any particular natural\nlanguages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network)
          (hsPkgs.utf8-string)
          ];
        pkgconfig = [ (pkgconfPkgs."hyperestraier") (pkgconfPkgs."qdbm") ];
        };
      };
    }