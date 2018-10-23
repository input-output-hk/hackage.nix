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
        name = "dockerfile";
        version = "0.2.0";
      };
      license = "MIT";
      copyright = "(c) 2018 Christopher Reichert <creichert07@gmail.com>";
      maintainer = "creichert07@gmail.com";
      author = "Christopher Reichert";
      homepage = "https://github.com/creichert/dockerfile#readme";
      url = "";
      synopsis = "A Haskell DSL for generating Dockerfiles";
      description = "";
      buildType = "Simple";
    };
    components = {
      "dockerfile" = {
        depends  = [ (hsPkgs.base) ];
      };
      tests = {
        "spec" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.dockerfile)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }