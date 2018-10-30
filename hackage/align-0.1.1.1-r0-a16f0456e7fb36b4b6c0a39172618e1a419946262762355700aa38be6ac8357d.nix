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
      specVersion = "1.10";
      identifier = {
        name = "align";
        version = "0.1.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "palotai.robin@gmail.com";
      author = "Robin Palotai";
      homepage = "";
      url = "";
      synopsis = "Sequence alignment algorithms.";
      description = "Global or local sequence alignment, not exclusively for text.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.uglymemo)
          (hsPkgs.vector)
        ];
      };
    };
  }