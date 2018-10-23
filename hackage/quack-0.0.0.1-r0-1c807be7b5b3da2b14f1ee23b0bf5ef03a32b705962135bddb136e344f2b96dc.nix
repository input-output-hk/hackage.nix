{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "quack";
        version = "0.0.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Athan Clark <athan.clark@gmail.com>";
      author = "Athan Clark <athan.clark@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Convenience parser combinators for URI query strings";
      description = "Check out the README";
      buildType = "Simple";
    };
    components = {
      "quack" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
          (hsPkgs.attoparsec)
          (hsPkgs.aeson)
          (hsPkgs.text)
          (hsPkgs.http-types)
        ];
      };
    };
  }