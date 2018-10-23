{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "polytypeable-utils";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Ahn, Ki Yung <kya@pdx.edu>";
      author = "Ahn, Ki Yung";
      homepage = "";
      url = "";
      synopsis = "Utilities for polytypeable.";
      description = "Utilities for polytypeable (Typeable for polymorphic types).";
      buildType = "Simple";
    };
    components = {
      "polytypeable-utils" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.haskell98)
          (hsPkgs.polytypeable)
        ];
      };
    };
  }