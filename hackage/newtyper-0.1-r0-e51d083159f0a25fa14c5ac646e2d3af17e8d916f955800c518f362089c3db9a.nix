{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "newtyper";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dylan@techtangents.com";
      author = "Dylan Just";
      homepage = "https://github.com/techtangents/Newtyper";
      url = "";
      synopsis = "Extra functions for the Control.Newtype typeclass";
      description = "Extra functions for the Control.Newtype typeclass";
      buildType = "Simple";
    };
    components = {
      "newtyper" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Kleislify)
          (hsPkgs.newtype)
        ];
      };
    };
  }