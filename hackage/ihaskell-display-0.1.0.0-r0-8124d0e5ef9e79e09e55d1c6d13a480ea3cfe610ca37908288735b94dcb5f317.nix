{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.16";
      identifier = {
        name = "ihaskell-display";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "http://www.github.com/gibiansky/IHaskell";
      url = "";
      synopsis = "IHaskell display instances for basic types";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ihaskell-display" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.classy-prelude)
          (hsPkgs.ihaskell)
        ];
      };
    };
  }