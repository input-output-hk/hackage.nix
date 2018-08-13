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
      specVersion = "0";
      identifier = {
        name = "stemmer";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 Tupil";
      maintainer = "Eelco Lempsink <eml+stemmer@tupil.com>";
      author = "Tupil";
      homepage = "";
      url = "";
      synopsis = "Haskell bindings to the Snowball stemming library.";
      description = "Haskell bindings to the Snowball stemming library.";
      buildType = "Simple";
    };
    components = {
      "stemmer" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }