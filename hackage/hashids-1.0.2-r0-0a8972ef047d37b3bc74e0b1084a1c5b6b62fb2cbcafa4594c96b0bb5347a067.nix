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
        name = "hashids";
        version = "1.0.2";
      };
      license = "MIT";
      copyright = "";
      maintainer = "hildenjohannes@gmail.com";
      author = "Johannes Hilden";
      homepage = "";
      url = "";
      synopsis = "";
      description = "This is a Haskell port of the Hashids library. Hashids generates short, unique, non-sequential ids from numbers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bytestring)
          (hsPkgs.containers)
          (hsPkgs.split)
        ];
      };
    };
  }