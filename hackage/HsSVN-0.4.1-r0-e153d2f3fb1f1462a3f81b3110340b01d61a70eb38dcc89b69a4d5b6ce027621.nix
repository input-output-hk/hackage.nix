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
      specVersion = "1.6";
      identifier = {
        name = "HsSVN";
        version = "0.4.1";
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
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.mtl)
          (hsPkgs.stm)
        ];
      };
    };
  }