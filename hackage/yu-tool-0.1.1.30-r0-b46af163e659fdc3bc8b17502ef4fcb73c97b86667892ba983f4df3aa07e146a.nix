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
        name = "yu-tool";
        version = "0.1.1.30";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2017-2018 Johann Lee <me@qinka.pro>";
      maintainer = "qinka@live.com";
      author = "Johann Lee";
      homepage = "https://github.com/Qinka/Yu";
      url = "";
      synopsis = "Tool for Yu";
      description = "Tool for Yu";
      buildType = "Simple";
    };
    components = {
      exes = {
        "yu" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.yu-utils)
            (hsPkgs.yu-auth)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.echo)
            (hsPkgs.filepath)
            (hsPkgs.process)
          ];
        };
      };
    };
  }