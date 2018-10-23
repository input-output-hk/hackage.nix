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
        name = "hsql";
        version = "1.7";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "";
      author = "Krasimir Angelov <ka2_mail@yahoo.com>";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Simple library for database access from Haskell.";
      buildType = "Custom";
    };
    components = {
      "hsql" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }