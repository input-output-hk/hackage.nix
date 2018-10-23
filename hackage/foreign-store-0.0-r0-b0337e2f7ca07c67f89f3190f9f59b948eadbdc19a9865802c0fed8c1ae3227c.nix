{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "foreign-store";
        version = "0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2014 Chris Done";
      maintainer = "chrisdone@gmail.com";
      author = "Chris Done";
      homepage = "";
      url = "";
      synopsis = "Store a stable pointer in a foreign context to be retrieved later. Persists through GHCi reloads.";
      description = "Store a stable pointer in a foreign context to be retrieved later. Persists through GHCi reloads.";
      buildType = "Simple";
    };
    components = {
      "foreign-store" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }