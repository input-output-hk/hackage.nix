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
        name = "result";
        version = "0.2.0.0";
      };
      license = "MIT";
      copyright = "2016 Sam Rijs";
      maintainer = "srijs@airpost.net";
      author = "Sam Rijs";
      homepage = "https://github.com/srijs/haskell-result";
      url = "";
      synopsis = "Encode success or at least one error";
      description = "";
      buildType = "Simple";
    };
    components = {
      "result" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.semigroups)
          (hsPkgs.keys)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.result)
          ];
        };
      };
    };
  }