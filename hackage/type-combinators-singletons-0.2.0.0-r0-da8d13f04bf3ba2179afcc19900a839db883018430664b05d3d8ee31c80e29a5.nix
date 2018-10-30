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
      specVersion = "1.10";
      identifier = {
        name = "type-combinators-singletons";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "(c) Justin Le 2017";
      maintainer = "justin@jle.im";
      author = "Justin Le";
      homepage = "https://github.com/mstksg/type-combinators-singletons";
      url = "";
      synopsis = "Interop between /type-combinators/ and /singletons/.";
      description = "Conversions between datatypes in /type-combinators/ and\nsingletons from /singletons/ and orphan instances.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.type-combinators)
          (hsPkgs.singletons)
        ];
      };
    };
  }