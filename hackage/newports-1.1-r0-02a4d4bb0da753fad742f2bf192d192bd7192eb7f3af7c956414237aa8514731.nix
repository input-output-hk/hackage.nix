{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "newports";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@fastmail.fm";
      author = "brad clawsie";
      homepage = "http://www.b7j0c.org/content/haskell-newports.html";
      url = "";
      synopsis = "List ports newer than N days on a FreeBSD system";
      description = "List ports newer than N days on a FreeBSD system";
      buildType = "Simple";
    };
    components = {
      exes = {
        "newports" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.old-time)
            (hsPkgs.directory)
          ];
        };
      };
    };
  }