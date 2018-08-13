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
        name = "HsJudy";
        version = "0.2";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Caio Marcelo de Oliveira Filho <cmarcelo@gmail.com>";
      author = "Caio Marcelo de Oliveira Filho, John Meacham";
      homepage = "http://www.pugscode.org/";
      url = "";
      synopsis = "Judy bindings, and some nice APIs";
      description = "Judy bindings (a C library that implements fast sparse dynamic\narrays) for Haskell presenting APIs conforming as much as possible to the\nexistent Haskell library interfaces, like Data.Map and Data.Array.MArray.\nThis binding for the Judy library includes all its four types: mapping from\nwords to bits (Judy1), from words to values (JudyL), from strings to values\n(JudyHS) and from array-of-bytes to values (JudyHS).";
      buildType = "Simple";
    };
    components = {
      "HsJudy" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.bytestring)
        ];
        libs = [ (pkgs."Judy") ];
      };
    };
  }