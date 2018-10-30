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
      specVersion = "1.8";
      identifier = {
        name = "network-simple";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013";
      maintainer = "renzocarbonaraaλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/network-simple";
      url = "";
      synopsis = "Abstract simple network sockets usage patterns.";
      description = "Abstract simple network sockets usage patterns.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
        ];
      };
    };
  }