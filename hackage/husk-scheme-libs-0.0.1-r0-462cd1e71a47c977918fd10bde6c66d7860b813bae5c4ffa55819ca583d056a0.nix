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
        name = "husk-scheme-libs";
        version = "0.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Justin Ethier <github.com/justinethier>";
      author = "Justin Ethier";
      homepage = "http://justinethier.github.com/husk-scheme";
      url = "";
      synopsis = "Extra libraries for the husk Scheme platform.";
      description = "Extra libraries for the husk Scheme platform.";
      buildType = "Simple";
    };
    components = {
      "husk-scheme-libs" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.array)
          (hsPkgs.containers)
          (hsPkgs.json)
          (hsPkgs.husk-scheme)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
        ];
      };
    };
  }