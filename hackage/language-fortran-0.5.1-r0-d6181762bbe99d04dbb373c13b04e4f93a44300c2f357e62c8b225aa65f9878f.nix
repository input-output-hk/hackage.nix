{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "language-fortran"; version = "0.5.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dagitj@gmail.com, dom.orchard@gmail.com";
      author = "Jason Dagit, Dominic Orchard, Oleg Oshmyan";
      homepage = "";
      url = "";
      synopsis = "Fortran lexer and parser, language support, and extensions.";
      description = "Lexer and parser for Fortran roughly supporting standards from\nFORTRAN 77 to Fortran 2003 (but with some patches and rough\nedges). Also includes language extension support for\nunits-of-measure typing.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
          (hsPkgs."haskell-src" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
          (hsPkgs.buildPackages.happy or (pkgs.buildPackages.happy or ((hsPkgs.pkgs-errors).buildToolDepError "happy")))
          ];
        buildable = true;
        };
      };
    }