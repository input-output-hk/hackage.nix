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
        name = "yarn-lock";
        version = "0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "mail@profpatsch.de";
      author = "Profpatsch";
      homepage = "https://github.com/Profpatsch/yaml-lock#readme";
      url = "";
      synopsis = "Represent and parse yarn.lock files";
      description = "Types and parser for the lock file format of the npm successor yarn.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.text)
          (hsPkgs.megaparsec)
          (hsPkgs.protolude)
        ];
      };
    };
  }