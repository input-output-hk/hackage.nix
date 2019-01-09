{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "left4deadrl"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.pennebaker@gmail.com";
      author = "Andrew Pennebaker";
      homepage = "";
      url = "";
      synopsis = "Wau codec";
      description = "A base unary encoder/decoder";
      buildType = "Simple";
      };
    components = {
      exes = {
        "left4deadrl" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.random)
            (hsPkgs.random-shuffle)
            (hsPkgs.hscharm)
            ];
          };
        };
      };
    }