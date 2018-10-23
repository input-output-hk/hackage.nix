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
        name = "ihaskell-aeson";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "andrew.gibiansky@gmail.com";
      author = "Andrew Gibiansky";
      homepage = "http://www.github.com/gibiansky/ihaskell";
      url = "";
      synopsis = "IHaskell display instances for Aeson";
      description = "";
      buildType = "Simple";
    };
    components = {
      "ihaskell-aeson" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.here)
          (hsPkgs.classy-prelude)
          (hsPkgs.aeson)
          (hsPkgs.aeson-pretty)
          (hsPkgs.chunked-data)
          (hsPkgs.ihaskell)
        ];
      };
    };
  }