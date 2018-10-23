{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "sys-auth-smbclient";
        version = "2.0.0.0";
      };
      license = "MIT";
      copyright = "(c) 2013 Kazuo Koga <obiwanko@me.com>";
      maintainer = "Kazuo Koga <obiwanko@me.com>";
      author = "Kazuo Koga <obiwanko@me.com>";
      homepage = "https://github.com/kkazuo/sys-auth-smbclient";
      url = "";
      synopsis = "Auth with smbclient command";
      description = "This module provides a interface for executing\n@smbclient@ commands.";
      buildType = "Simple";
    };
    components = {
      "sys-auth-smbclient" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.text)
        ];
      };
      tests = {
        "doctest" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.doctest)
          ];
        };
      };
    };
  }