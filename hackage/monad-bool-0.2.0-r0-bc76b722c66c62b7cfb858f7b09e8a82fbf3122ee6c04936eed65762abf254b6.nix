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
        name = "monad-bool";
        version = "0.2.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "johnw@newartisans.com";
      author = "John Wiegley";
      homepage = "";
      url = "";
      synopsis = "This package has been removed.";
      description = "This package has been removed.";
      buildType = "Simple";
    };
    components = {
      "monad-bool" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }