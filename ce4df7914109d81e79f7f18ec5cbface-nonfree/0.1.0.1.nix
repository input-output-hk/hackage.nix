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
      specVersion = "1.8";
      identifier = {
        name = "nonfree";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "shachaf@gmail.com";
      author = "Shachaf Ben-Kiki";
      homepage = "";
      url = "";
      synopsis = "Free structures sans laws";
      description = "Reified structures for debugging consumers of type classes.";
      buildType = "Simple";
    };
    components = {
      "nonfree" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }