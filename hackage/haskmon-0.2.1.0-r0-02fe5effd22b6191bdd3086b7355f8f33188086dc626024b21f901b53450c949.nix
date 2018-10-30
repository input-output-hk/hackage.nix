{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "haskmon";
        version = "0.2.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "P.J.Rodriguez.T@gmail.com";
      author = "Pedro Rodriguez";
      homepage = "";
      url = "";
      synopsis = "A haskell wrapper for PokeAPI.co (www.pokeapi.co)";
      description = "This is a haskell wrapper for the RESTful api www.pokeapi.co.\nIt defines most of the types and functions in the API.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-streams)
          (hsPkgs.bytestring)
          (hsPkgs.io-streams)
          (hsPkgs.aeson)
          (hsPkgs.time)
          (hsPkgs.vector)
          (hsPkgs.containers)
        ];
      };
    };
  }