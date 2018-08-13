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
        name = "Configger";
        version = "0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "nate@natesoares.com";
      author = "Nate Soares";
      homepage = "";
      url = "";
      synopsis = "Parse config files";
      description = "Parses a config file into [(String, [(String, String)])]";
      buildType = "Simple";
    };
    components = {
      "Configger" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.Dangerous)
          (hsPkgs.MissingH)
          (hsPkgs.mtl)
          (hsPkgs.parsec)
        ];
      };
    };
  }