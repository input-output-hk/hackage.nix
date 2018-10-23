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
        name = "jonathanscard";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2011 Spearhead Development, L.L.C.";
      maintainer = "Michael Schade <michael@spearheaddev.com>";
      author = "Spearhead Development, L.L.C.";
      homepage = "";
      url = "";
      synopsis = "An implementation of the Jonathan's Card API.";
      description = "This implements the Jonathan's Card API, as detailed at\n<http://jonathanstark.com/card/#api>";
      buildType = "Simple";
    };
    components = {
      "jonathanscard" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.HTTP)
          (hsPkgs.json)
          (hsPkgs.mtl)
          (hsPkgs.network)
        ];
      };
    };
  }