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
      specVersion = "1.10";
      identifier = {
        name = "y0l0bot";
        version = "0.1.0";
      };
      license = "AGPL-3.0-only";
      copyright = "Alexander Berntsen 2014";
      maintainer = "alexander@plaimi.net";
      author = "Alexander Berntsen";
      homepage = "";
      url = "";
      synopsis = "#plaimi's all-encompassing bot";
      description = "IRC bot used in #plaimi on irc.freenode.net.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yolobot" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.mtl)
            (hsPkgs.network)
            (hsPkgs.old-locale)
            (hsPkgs.old-time)
            (hsPkgs.safe)
            (hsPkgs.split)
            (hsPkgs.text)
            (hsPkgs.time)
          ];
        };
      };
    };
  }