{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clash-multisignal";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "Luka Rahne";
      maintainer = "luka.rahne@gmail.com";
      author = "Luka Rahne";
      homepage = "https://github.com/ra1u/clash-multisignal";
      url = "";
      synopsis = "";
      description = "Clash/Fpga library for working with multiple elements arriving at same clock as stream.";
      buildType = "Simple";
    };
    components = {
      "clash-multisignal" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.clash-prelude)
          (hsPkgs.QuickCheck)
        ];
      };
    };
  }