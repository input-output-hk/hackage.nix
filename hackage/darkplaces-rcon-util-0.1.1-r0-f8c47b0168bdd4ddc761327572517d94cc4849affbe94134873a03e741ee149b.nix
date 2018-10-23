{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      linuxstatic = false;
      old-locale = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "darkplaces-rcon-util";
        version = "0.1.1";
      };
      license = "GPL-2.0-only";
      copyright = "(c) Slava Bacherikov 2015";
      maintainer = "slava@bacher09.org";
      author = "Slava Bacherikov";
      homepage = "https://github.com/bacher09/darkplaces-rcon";
      url = "";
      synopsis = "Darplaces rcon utility";
      description = "This is implementation of rcon shell for darkplaces engine.\nFor more info visit https://github.com/bacher09/darkplaces-rcon/blob/master/darkplaces-rcon-util/README.md";
      buildType = "Simple";
    };
    components = {
      "darkplaces-rcon-util" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.bytestring)
          (hsPkgs.optparse-applicative)
          (hsPkgs.containers)
          (hsPkgs.utf8-string)
          (hsPkgs.ConfigFile)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.HostAndPort)
          (hsPkgs.darkplaces-text)
          (hsPkgs.darkplaces-rcon)
          (hsPkgs.text)
          (hsPkgs.haskeline)
        ] ++ (if flags.old-locale
          then [
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ]
          else [ (hsPkgs.time) ]);
      };
      exes = {
        "drcon" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mtl)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-applicative)
            (hsPkgs.utf8-string)
            (hsPkgs.darkplaces-text)
            (hsPkgs.darkplaces-rcon)
            (hsPkgs.darkplaces-rcon-util)
            (hsPkgs.text)
            (hsPkgs.haskeline)
          ];
        };
      };
      tests = {
        "rcon-util-tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.darkplaces-rcon-util)
            (hsPkgs.darkplaces-rcon)
            (hsPkgs.darkplaces-text)
            (hsPkgs.text)
            (hsPkgs.hspec-core)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }