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
        name = "java-poker";
        version = "0.1.1.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "toby.net.info+git@gmail.com";
      author = "tobynet";
      homepage = "https://github.com/tobynet/java-poker#readme";
      url = "";
      synopsis = "The etude of the Haskell programming";
      description = "poker like a JAVA";
      buildType = "Simple";
    };
    components = {
      "java-poker" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.random-shuffle)
        ];
      };
      exes = {
        "java-poker-simple" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.java-poker)
          ];
        };
      };
    };
  }