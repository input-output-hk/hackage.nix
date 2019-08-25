{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "replace-megaparsec"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jamesbrock@gmail.com";
      author = "James Brock";
      homepage = "https://github.com/jamesdbrock/replace-megaparsec";
      url = "";
      synopsis = "Stream editing with parsers";
      description = "Stream editing and find-and-replace with Megaparsec monadic parser\ncombinators.";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.megaparsec) ]; };
      tests = {
        "test-string" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.replace-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.Cabal)
            ];
          };
        "test-text" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.replace-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.Cabal)
            (hsPkgs.text)
            ];
          };
        "test-bytestring" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.replace-megaparsec)
            (hsPkgs.megaparsec)
            (hsPkgs.Cabal)
            (hsPkgs.bytestring)
            ];
          };
        };
      };
    }