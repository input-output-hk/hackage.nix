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
      specVersion = "1.10";
      identifier = {
        name = "foma";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "joomy@cattheory.com";
      author = "Joomy Korkut";
      homepage = "http://github.com/joom/foma.hs";
      url = "";
      synopsis = "Simple Haskell bindings for Foma.";
      description = "Foma is a free and open source finite-state toolkit.\nThis package contains some simple Haskell bindings to\n<http://code.google.com/p/foma/ Foma>.";
      buildType = "Simple";
    };
    components = {
      "foma" = {
        depends  = [ (hsPkgs.base) ];
        libs = [ (pkgs.foma) ];
      };
    };
  }