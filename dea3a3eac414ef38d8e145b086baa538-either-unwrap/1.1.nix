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
      specVersion = "1.2";
      identifier = {
        name = "either-unwrap";
        version = "1.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gregory Crosswhite <gcross@phys.washington.edu>";
      author = "Gregory Crosswhite";
      homepage = "http://github.com/gcross/either-unwrap";
      url = "";
      synopsis = "Functions for probing and unwrapping values inside of Either.";
      description = "Functions for probing and unwrapping values inside of Either.";
      buildType = "Simple";
    };
    components = {
      "either-unwrap" = {
        depends  = [ (hsPkgs.base) ];
      };
    };
  }