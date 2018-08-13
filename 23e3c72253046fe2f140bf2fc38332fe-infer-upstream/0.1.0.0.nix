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
      specVersion = "1.8";
      identifier = {
        name = "infer-upstream";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "noonsilk@gmail.com";
      author = "Noon Silk";
      homepage = "https://github.com/silky/infer-upstream";
      url = "";
      synopsis = "Find the repository from where a given repo was forked";
      description = "Find the repository from where a given repo was forked";
      buildType = "Simple";
    };
    components = {
      exes = {
        "infer-upstream" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.optparse-applicative)
            (hsPkgs.github)
          ];
        };
      };
    };
  }