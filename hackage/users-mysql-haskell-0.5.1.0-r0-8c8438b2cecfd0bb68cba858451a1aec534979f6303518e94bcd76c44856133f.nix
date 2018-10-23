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
        name = "users-mysql-haskell";
        version = "0.5.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "diaz.carrete@facebook.com";
      author = "Daniel Diaz";
      homepage = "";
      url = "";
      synopsis = "A mysql-haskell backend for the users library.";
      description = "A mysql-haskell backend for the users library.";
      buildType = "Simple";
    };
    components = {
      "users-mysql-haskell" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.users)
          (hsPkgs.mysql-haskell)
          (hsPkgs.transformers)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.uuid)
          (hsPkgs.io-streams)
        ];
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.users)
            (hsPkgs.mysql-haskell)
            (hsPkgs.transformers)
            (hsPkgs.text)
            (hsPkgs.time)
            (hsPkgs.uuid)
            (hsPkgs.io-streams)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.bytestring)
          ];
        };
      };
    };
  }