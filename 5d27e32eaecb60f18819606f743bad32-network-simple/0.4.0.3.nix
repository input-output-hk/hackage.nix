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
        version = "0.4.0.3";
      };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Renzo Carbonara 2013-2015";
      maintainer = "renzocarbonaraλgmail.com";
      author = "Renzo Carbonara";
      homepage = "https://github.com/k0001/network-simple";
      url = "";
      synopsis = "Simple network sockets usage patterns.";
      description = "This module exports functions that abstract simple network socket\nusage patterns.\n\nSee the @changelog.md@ file in the source distribution to learn about any\nimportant changes between version.";
      buildType = "Simple";
    };
    components = {
      "network-simple" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.exceptions)
        ];
      };
    };
  }