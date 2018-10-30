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
      specVersion = "0";
      identifier = {
        name = "pointfree";
        version = "1.0";
      };
      license = "LicenseRef-OtherLicense";
      copyright = "";
      maintainer = "";
      author = "Thomas Jäger";
      homepage = "http://haskell.org/haskellwiki/Pointfree";
      url = "";
      synopsis = "Pointfree refactoring tool";
      description = "Stand-alone command-line version of the point-less plugin for lambdabot.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "pointfree" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.parsec)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }