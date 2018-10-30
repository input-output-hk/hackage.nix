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
      specVersion = "1.2";
      identifier = {
        name = "naturals";
        version = "0.2.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "christopher.howard@frigidcode.com";
      author = "Christopher Howard";
      homepage = "frigidcode.com";
      url = "";
      synopsis = "Constructors and related functions for natural numbers";
      description = "Provides a natural number type with a safe constructor and related operations";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }