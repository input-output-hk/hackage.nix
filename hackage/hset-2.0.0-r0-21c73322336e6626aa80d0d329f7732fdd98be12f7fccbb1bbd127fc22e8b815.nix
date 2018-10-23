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
        name = "hset";
        version = "2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "s9gf4ult@gmail.com";
      author = "s9gf4ult";
      homepage = "https://bitbucket.org/s9gf4ult/hset";
      url = "";
      synopsis = "Primitive list with elements of unique types.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "hset" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.deepseq)
          (hsPkgs.tagged)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.HUnit)
            (hsPkgs.base)
            (hsPkgs.hset)
            (hsPkgs.tagged)
          ];
        };
      };
    };
  }