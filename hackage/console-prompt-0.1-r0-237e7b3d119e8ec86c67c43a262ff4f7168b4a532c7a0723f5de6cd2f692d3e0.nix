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
        name = "console-prompt";
        version = "0.1";
      };
      license = "LGPL-3.0-only";
      copyright = "2017";
      maintainer = "jlamothe1980@gmail.com";
      author = "Jonathan Lamothe";
      homepage = "https://github.com/jlamothe/console-prompt";
      url = "";
      synopsis = "console user prompts";
      description = "";
      buildType = "Simple";
    };
    components = {
      "console-prompt" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }