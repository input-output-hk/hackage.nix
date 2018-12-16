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
        name = "hog";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Simple IRC logger bot.";
      description = "Simple IRC logger bot, connects to given channels and\nlogs lines to files of the corresponding channel names.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hog" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.cmdargs)
            (hsPkgs.network)
            (hsPkgs.irc)
            (hsPkgs.filepath)
            (hsPkgs.time)
            (hsPkgs.old-locale)
          ];
        };
      };
    };
  }