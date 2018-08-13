{ system
, compiler
, flags ? {}
, pkgs
, hsPkgs
, pkgconfPkgs }:
  let
    _flags = {} // flags;
  in {
    flags = _flags;
    package = {
      specVersion = "1.6";
      identifier = {
        name = "discordian-calendar";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "acurtis@spsu.edu";
      author = "Adam Curtis";
      homepage = "https://github.com/kallisti-dev/discordian-calendar";
      url = "";
      synopsis = "library for handling Discordian calendar dates";
      description = "";
      buildType = "Simple";
    };
    components = {
      "discordian-calendar" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.time)
        ];
      };
    };
  }