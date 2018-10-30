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
        name = "hotswap";
        version = "0.1.9.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "eleventynine@gmail.com";
      author = "Mike Ledger";
      homepage = "https://github.com/mikeplus64/hotswap";
      url = "";
      synopsis = "Simple code hotswapping.";
      description = "A simple, high-level interface to plugins.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.plugins)
        ];
      };
    };
  }