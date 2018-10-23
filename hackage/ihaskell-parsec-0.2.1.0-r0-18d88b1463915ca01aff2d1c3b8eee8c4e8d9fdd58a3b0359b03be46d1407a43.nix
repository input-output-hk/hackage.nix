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
        name = "ihaskell-parsec";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "http://www.github.com/gibiansky/ihaskell";
      url = "";
      synopsis = "IHaskell display instances for Parsec";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ihaskell-parsec" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.classy-prelude)
          (hsPkgs.random)
          (hsPkgs.parsec)
          (hsPkgs.here)
          (hsPkgs.ihaskell)
        ];
      };
    };
  }