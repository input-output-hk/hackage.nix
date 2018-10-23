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
        name = "prefix-expression";
        version = "1.0.0";
      };
      license = "GPL-3.0-only";
      copyright = "Copyright: ©  2017 Vonfry";
      maintainer = "vonfry314@gmail.com";
      author = "Vonfry";
      homepage = "https://github.com/VonFry/ParseExpression#readme";
      url = "";
      synopsis = "";
      description = "convert infix to prefix expression";
      buildType = "Simple";
    };
    components = {
      "prefix-expression" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.regex-pcre-builtin)
        ];
      };
      tests = {
        "Test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hspec)
            (hsPkgs.prefix-expression)
          ];
        };
      };
    };
  }