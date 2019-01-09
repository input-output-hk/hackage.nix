{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "iconv"; version = "0.2"; };
      license = "LicenseRef-OtherLicense";
      copyright = "Ian Lynagh, 2005";
      maintainer = "igloo@earth.li";
      author = "Ian Lynagh";
      homepage = "http://urchin.earth.li/~ian/cabal/iconv/";
      url = "";
      synopsis = "Perform character set conversion";
      description = "Provides an interface to the unix iconv functions for character\nset conversion.\n\nIt makes use of some knowledge of glibc's iconv that isn't\nguaranteed by the standard.";
      buildType = "Custom";
      };
    components = { "library" = { depends = [ (hsPkgs.base) ]; }; };
    }