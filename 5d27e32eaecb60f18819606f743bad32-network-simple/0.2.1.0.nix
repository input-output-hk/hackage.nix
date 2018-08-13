{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.8";
      identifier = {
        name = "network-simple";
        version = "0.2.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/network-simple";
      url = "";
      synopsis = "Simple network sockets usage patterns.";
      description = "Simple network sockets usage patterns.\n\nSee the @NEWS@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
    };
    components = {
      "network-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
        ];
      };
    };
  }