{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sexpr-parser"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Richard Cook";
      maintainer = "rcook@rcook.org";
      author = "Richard Cook";
      homepage = "https://github.com/rcook/sexpr-parser#readme";
      url = "";
      synopsis = "Simple s-expression parser";
      description = "This package provides a simple Megaparsec-based s-expression parser.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.megaparsec) (hsPkgs.parsec) ];
        };
      exes = {
        "sexpr-parser-z3-demo" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.megaparsec)
            (hsPkgs.process)
            (hsPkgs.sexpr-parser)
            ];
          };
        };
      tests = {
        "sexpr-parser-spec" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.megaparsec)
            (hsPkgs.sexpr-parser)
            ];
          };
        };
      };
    }