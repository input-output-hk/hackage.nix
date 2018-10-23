{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "bla";
        version = "2009.10.13";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Wang, Jinjing <nfjinjing@gmail.com>";
      author = "Wang, Jinjing";
      homepage = "http://github.com/nfjinjing/bla";
      url = "";
      synopsis = "a stupid cron";
      description = "run a script forever";
      buildType = "Simple";
    };
    components = {
      exes = {
        "bla" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }