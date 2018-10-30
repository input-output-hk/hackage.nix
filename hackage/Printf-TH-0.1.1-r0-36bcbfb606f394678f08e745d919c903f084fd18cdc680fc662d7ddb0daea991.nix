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
      specVersion = "0";
      identifier = {
        name = "Printf-TH";
        version = "0.1.1";
      };
      license = "LicenseRef-LGPL";
      copyright = "";
      maintainer = "Marc Weber <marco-oweber@gmx.de>";
      author = "Ian Lynagh <igloo@earth.li> June 2003";
      homepage = "";
      url = "";
      synopsis = "";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.haskell98)
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.pretty)
        ];
      };
    };
  }