{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      integrationtest = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "darkplaces-rcon";
        version = "0.1";
      };
      license = "GPL-2.0-only";
      copyright = "(c) Slava Bacherikov 2015";
      maintainer = "slava@bacher09.org";
      author = "Slava Bacherikov";
      homepage = "https://github.com/bacher09/darkplaces-rcon";
      url = "";
      synopsis = "Darkplaces rcon client library";
      description = "Rcon client library for Darkplaces game engine. It fully\nimplemnts both non-secure and \"secure\" rcon protocols.\nSupports such games as Xonotic, Nexuiz.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.cryptohash)
          (hsPkgs.network)
          (hsPkgs.time)
          (hsPkgs.byteable)
        ];
      };
      tests = {
        "rcon-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.darkplaces-rcon)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }