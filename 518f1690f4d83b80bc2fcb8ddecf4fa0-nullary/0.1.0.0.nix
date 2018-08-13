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
      specVersion = "1.10";
      identifier = {
        name = "nullary";
        version = "0.1.0.0";
      };
      license = "BSD-2-Clause";
      copyright = "2015 Derek Elkins";
      maintainer = "derek.a.elkins+github@gmail.com";
      author = "Derek Elkins";
      homepage = "https://github.com/derekelkins/nullary";
      url = "";
      synopsis = "A package for working with nullary type classes.";
      description = "Work with nullary type classes without orphan instances.";
      buildType = "Simple";
    };
    components = {
      "nullary" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }