{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = {
        name = "aterm";
        version = "0.1.0.0";
      };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Christian Maeder <Christian Maeder@dfki.de>";
      author = "Klaus Luettich, Christian Maeder";
      homepage = "https://svn-agbkb.informatik.uni-bremen.de/Hets/trunk/atermlib";
      url = "";
      synopsis = "serialisation for Haskell values with sharing support";
      description = "Efficient serialisation via annotated terms.\nTypeable Haskell values may be converted to and from aterms.";
      buildType = "Simple";
    };
    components = {
      "aterm" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.ghc-prim)
          (hsPkgs.containers)
          (hsPkgs.array)
        ];
      };
    };
  }