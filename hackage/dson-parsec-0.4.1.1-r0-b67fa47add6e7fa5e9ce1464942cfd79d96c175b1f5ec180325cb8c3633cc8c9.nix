{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "dson-parsec"; version = "0.4.1.1"; };
      license = "MIT";
      copyright = "(c) Ezequiel Alvarez 2014";
      maintainer = "welcometothechango@gmail.com";
      author = "Ezequiel Alvarez";
      homepage = "https://github.com/alvare/dson-parsec";
      url = "";
      synopsis = "DSON parser.";
      description = "A parser for DSON strings built with parsec3.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      };
    }