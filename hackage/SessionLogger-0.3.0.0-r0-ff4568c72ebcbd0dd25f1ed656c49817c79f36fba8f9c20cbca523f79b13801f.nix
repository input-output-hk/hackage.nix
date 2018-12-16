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
      specVersion = "1.6";
      identifier = {
        name = "SessionLogger";
        version = "0.3.0.0";
      };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "Gero Kriependorf <gero-dev@physra.net>";
      author = "Gero Kriependorf <gero-dev@physra.net>";
      homepage = "";
      url = "";
      synopsis = "Easy Loggingframework";
      description = "Logger is a framework for making logging, especially web\nrequest, easy. It supports a special file hierachy where\nevery request has its own directory with a main log file\nand serveral other files worth to log. In addition there\nis a main log file with important messages and an info file\nfor things like performance meassuring. These two files\nare avaliable for each day separately.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.time)
          (hsPkgs.hslogger)
          (hsPkgs.directory)
          (hsPkgs.filepath)
          (hsPkgs.old-locale)
          (hsPkgs.random)
        ];
      };
    };
  }