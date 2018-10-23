{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "IPv6Addr";
        version = "0.3.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright © 2011-2013 - Michel Boucey";
      maintainer = "Michel Boucey <michel.boucey@gmail.com>";
      author = "Michel Boucey <michel.boucey@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Library to deal with IPv6 address text representations.";
      description = "Library to deal with IPv6 address text representations, canonization and manipulations.";
      buildType = "Simple";
    };
    components = {
      "IPv6Addr" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.network-info)
          (hsPkgs.random)
          (hsPkgs.text)
        ];
      };
    };
  }