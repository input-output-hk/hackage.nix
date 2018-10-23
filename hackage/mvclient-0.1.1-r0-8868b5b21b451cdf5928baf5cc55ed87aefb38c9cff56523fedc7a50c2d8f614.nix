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
        name = "mvclient";
        version = "0.1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cdsmith@gmail.com";
      author = "Chris Smith";
      homepage = "";
      url = "";
      synopsis = "Client library for metaverse systems like Second Life";
      description = "This implements the client side of connections to virtual world environments\nlike Linden Labs' Second Life or OpenSim (http://opesimulator.org), sometimes\nknown as the \"metaverse\".\n\nBecause of the lack of SSL implementations for Haskell, you currently need\nto set up stunnel for initial login step for worlds (like Second Life) that\nuse secure login pages.";
      buildType = "Custom";
    };
    components = {
      "mvclient" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.random)
          (hsPkgs.Crypto)
          (hsPkgs.HTTP)
          (hsPkgs.maccatcher)
          (hsPkgs.haxr)
          (hsPkgs.binary)
          (hsPkgs.network-bytestring)
          (hsPkgs.mtl)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.control-event)
        ];
      };
    };
  }