{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "infer-upstream";
        version = "0.1.1.0";
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
            (hsPkgs.process)
            (hsPkgs.parsec)
            (hsPkgs.ansi-wl-pprint)
          ];
        };
      };
    };
  }