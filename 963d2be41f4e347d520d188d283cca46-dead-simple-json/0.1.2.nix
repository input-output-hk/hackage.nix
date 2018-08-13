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
      specVersion = "1.6";
      identifier = {
        name = "dead-simple-json";
        version = "0.1.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      author = "Julian Fleischer <julian.fleischer@fu-berlin.de>";
      homepage = "http://hub.darcs.net/scravy/dead-simple-json";
      url = "";
      synopsis = "Dead simple JSON parser, with some Template Haskell sugar.";
      description = "This is dead simple JSON, consisting of a simple parser built with Parsec\nand some Template Haskell syntactic sugar (which you may or may not use,\nit works without).";
      buildType = "Simple";
    };
    components = {
      "dead-simple-json" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.transformers)
          (hsPkgs.parsec)
          (hsPkgs.vector)
          (hsPkgs.containers)
          (hsPkgs.template-haskell)
        ];
      };
    };
  }