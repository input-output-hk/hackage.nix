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
      specVersion = "1.6";
      identifier = {
        name = "data-ordlist";
        version = "0.4.6";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Leon P Smith <leon@melding-monads.com>";
      author = "Leon P Smith <leon@melding-monads.com>";
      homepage = "";
      url = "";
      synopsis = "Set and bag operations on ordered lists";
      description = "This module provides set and multiset operations on ordered lists.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }