{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.14";
      identifier = {
        name = "hydrogen-version";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "julfleischer@paypal.com";
      author = "Julian Fleischer";
      homepage = "https://github.com/scravy/hydrogen-version";
      url = "";
      synopsis = "Hydrogen Version type";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hydrogen-version" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }