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
        name = "lexer-applicative";
        version = "2.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "Roman Cheplyaka <roma@ro-che.info>";
      author = "Roman Cheplyaka <roma@ro-che.info>";
      homepage = "https://github.com/feuerbach/lexer-applicative";
      url = "";
      synopsis = "Simple lexer based on applicative regular expressions";
      description = "Simple lexer based on applicative regular expressions";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.srcloc)
          (hsPkgs.regex-applicative)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.regex-applicative)
            (hsPkgs.lexer-applicative)
            (hsPkgs.srcloc)
            (hsPkgs.deepseq)
          ];
        };
      };
    };
  }