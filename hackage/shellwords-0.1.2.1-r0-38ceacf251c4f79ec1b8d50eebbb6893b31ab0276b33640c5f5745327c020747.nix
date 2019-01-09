{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "shellwords"; version = "0.1.2.1"; };
      license = "MIT";
      copyright = "2018 Patrick Brisbin";
      maintainer = "pbrisbin@gmail.com";
      author = "Patrick Brisbin";
      homepage = "https://github.com/pbrisbin/hs-shellwords#readme";
      url = "";
      synopsis = "Parse strings into words, like a shell would";
      description = "See https://github.com/pbrisbin/hs-shellwords#readme";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.megaparsec) (hsPkgs.text) ];
        };
      tests = {
        "hspec" = {
          depends = [ (hsPkgs.base) (hsPkgs.hspec) (hsPkgs.shellwords) ];
          };
        };
      };
    }