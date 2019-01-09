{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "HsSVN"; version = "0.2"; };
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
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.mtl) ];
        };
      };
    }