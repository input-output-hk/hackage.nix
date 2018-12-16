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
      specVersion = "1.8";
      identifier = {
        name = "librandomorg";
        version = "0.0.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "matvey.aksenov@gmail.com";
      author = "Matvey Aksenov";
      homepage = "https://github.com/supki/haskell-random.org";
      url = "";
      synopsis = "Wrapper to Random.org API";
      description = "Simple but complete wrapper to Random.org API";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.curl)
          (hsPkgs.bytestring)
        ];
      };
    };
  }