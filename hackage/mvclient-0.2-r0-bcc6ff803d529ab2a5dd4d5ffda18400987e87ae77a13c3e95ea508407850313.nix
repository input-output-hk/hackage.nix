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
      specVersion = "1.2";
      identifier = {
        name = "mvclient";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cdsmith@gmail.com";
      author = "Chris Smith";
      homepage = "";
      url = "";
      synopsis = "Client library for metaverse systems like Second Life";
      description = "The client side of connections to virtual world environments\nlike Linden Labs' Second Life or OpenSim\n(<http://opensimulator.org>), sometimes known as the\n\"metaverse\".\n\nNote that due to the lack of SSL implementations for\nHaskell, you currently need to set up stunnel for initial\nlogin step for worlds (like Second Life) that use secure\nlogin pages.  This is also the main obstacle to an\nimplementation of the caps system.";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.network)
          (hsPkgs.bytestring)
          (hsPkgs.Crypto)
          (hsPkgs.HTTP)
          (hsPkgs.maccatcher)
          (hsPkgs.haxr)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.control-event)
          (hsPkgs.parsec)
          (hsPkgs.uuid)
        ];
      };
    };
  }