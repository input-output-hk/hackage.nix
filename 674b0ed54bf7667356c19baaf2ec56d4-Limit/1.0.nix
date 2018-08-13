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
      specVersion = "1.6";
      identifier = {
        name = "Limit";
        version = "1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nate@natesoares.com";
      author = "Nate Soares";
      homepage = "";
      url = "";
      synopsis = "Wrapper for data that can be unbounded";
      description = "Limit n is like Maybe n, with (Bounded n) in place of (Just n)\nand Unbounded in place of Nothing. The only difference is that\n∀n. Unbounded >= Bounded n, which makes Limit a good data type\nto deal with numbers that can become unbounded.";
      buildType = "Simple";
    };
    components = {
      "Limit" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }