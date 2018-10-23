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
        name = "json-python";
        version = "0.4.0.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "russell.s.stewart@gmail.com";
      author = "Russell Stewart";
      homepage = "http://stewart.guru";
      url = "";
      synopsis = "Call python inline from haskell";
      description = "WARNING: Project in alpha. Call python from haskell with ease.";
      buildType = "Simple";
    };
    components = {
      "json-python" = {
        depends  = [
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