{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "generic-aeson"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "code@silk.co";
      author = "Silk";
      homepage = "";
      url = "";
      synopsis = "Derivation of Aeson instances using GHC generics.";
      description = "Derivation of Aeson instances using GHC generics.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.generic-deriving)
          (hsPkgs.mtl)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.attoparsec)
          ];
        };
      };
    }