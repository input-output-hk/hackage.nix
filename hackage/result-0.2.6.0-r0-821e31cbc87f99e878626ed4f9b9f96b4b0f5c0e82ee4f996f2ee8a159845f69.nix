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
        name = "result";
        version = "0.2.6.0";
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
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.bifunctors)
          (hsPkgs.mtl)
          (hsPkgs.transformers)
          (hsPkgs.keys)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.result)
          ];
        };
      };
    };
  }