{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      network-bytestring = true;
    };
    package = {
      specVersion = "1.6";
      identifier = {
        name = "mvclient";
        version = "0.3";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "cdsmith@gmail.com";
      author = "Chris Smith";
      homepage = "";
      url = "";
      synopsis = "Client library for metaverse systems like Second Life";
      description = "The client side of connections to virtual world environments\nlike Linden Labs' Second Life, sometimes known as the\n\"metaverse\".\n\nAs of version 0.3, no longer requires an stunnel proxy for\nconnecting to Second Life.  Thanks for Michael Snoyman and\nhis http-enumerator package!";
      buildType = "Custom";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.Crypto)
          (hsPkgs.maccatcher)
          (hsPkgs.binary)
          (hsPkgs.mtl)
          (hsPkgs.data-binary-ieee754)
          (hsPkgs.containers)
          (hsPkgs.time)
          (hsPkgs.control-event)
          (hsPkgs.parsec)
          (hsPkgs.uuid)
          (hsPkgs.http-enumerator)
          (hsPkgs.hexpat)
        ] ++ (if flags.network-bytestring
          then [
            (hsPkgs.network)
            (hsPkgs.network-bytestring)
          ]
          else [ (hsPkgs.network) ]);
      };
    };
  }