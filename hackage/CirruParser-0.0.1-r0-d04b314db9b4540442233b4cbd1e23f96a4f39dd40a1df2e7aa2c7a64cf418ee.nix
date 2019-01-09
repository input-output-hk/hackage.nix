{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "CirruParser"; version = "0.0.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "jiyiyiyiony@gmail.com";
      author = "JiyinYiyong";
      homepage = "https://github.com/Cirru/parser.hs";
      url = "";
      synopsis = "Cirru Parser in Haskell";
      description = "Cirru Parser in Haskell";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.text)
          (hsPkgs.vector)
          (hsPkgs.aeson)
          ];
        };
      };
    }