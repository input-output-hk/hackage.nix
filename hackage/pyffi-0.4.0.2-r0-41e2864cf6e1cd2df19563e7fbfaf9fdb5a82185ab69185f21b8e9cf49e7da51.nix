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
        name = "pyffi";
        version = "0.4.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "russell.s.stewart@gmail.com";
      author = "Russell Stewart";
      homepage = "http://github.com/Russell91/json-python";
      url = "";
      synopsis = "Call python inline from haskell";
      description = "WARNING: Project in alpha. Call python from haskell with ease.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.template-haskell)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.pureMD5)
        ];
        pkgconfig = [
          (pkgconfPkgs.python)
        ];
      };
    };
  }