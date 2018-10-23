{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = {
        name = "hsql";
        version = "1.7.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Chris Done <chrisdone@gmail.com>";
      author = "Krasimir Angelov <ka2_mail@yahoo.com>";
      homepage = "";
      url = "";
      synopsis = "Simple library for database access from Haskell.";
      description = "Simple library for database access from Haskell.";
      buildType = "Simple";
    };
    components = {
      "hsql" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.old-time)
        ];
      };
    };
  }