{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "format"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "bytbox@gmail.com";
      author = "Scott Lawrence";
      homepage = "https://github.com/bytbox/hs-format";
      url = "";
      synopsis = "Rendering from and scanning to format strings";
      description = "Rendering from and scanning to simple format strings";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.haskell2010) (hsPkgs.parsec) ]; };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.haskell2010)
            (hsPkgs.parsec)
            (hsPkgs.QuickCheck)
            ];
          };
        };
      };
    }