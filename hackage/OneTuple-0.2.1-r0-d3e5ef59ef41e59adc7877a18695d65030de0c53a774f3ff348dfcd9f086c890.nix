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
        name = "OneTuple";
        version = "0.2.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) John Dorsey 2008";
      maintainer = "John Dorsey <haskell@colquitt.org>";
      author = "John Dorsey <haskell@colquitt.org>";
      homepage = "";
      url = "";
      synopsis = "Singleton Tuple";
      description = "Singleton Tuple";
      buildType = "Simple";
    };
    components = {
      "OneTuple" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }