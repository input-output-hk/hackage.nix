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
        name = "async-extra";
        version = "0.1.0.0";
      };
      license = "MIT";
      copyright = "2017 Alexander Thiemann";
      maintainer = "mail@athiemann.net";
      author = "Alexander Thiemann";
      homepage = "https://github.com/agrafix/async-extra#readme";
      url = "";
      synopsis = "Useful concurrent combinators";
      description = "Various concurrent combinators";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.async)
          (hsPkgs.containers)
          (hsPkgs.deepseq)
        ];
      };
    };
  }