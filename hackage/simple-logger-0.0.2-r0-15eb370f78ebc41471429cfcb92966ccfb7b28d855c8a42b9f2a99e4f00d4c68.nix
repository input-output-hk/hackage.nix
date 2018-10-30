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
        name = "simple-logger";
        version = "0.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Alexander Thiemann <mail@athiemann.net>";
      author = "";
      homepage = "https://github.com/agrafix/simple-logger#readme";
      url = "";
      synopsis = "A very simple but efficient logging framework";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.fast-logger)
          (hsPkgs.text)
          (hsPkgs.mtl)
        ];
      };
    };
  }