{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "language-c99-simple"; version = "0.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Frank Dedden <dev@dedden.net>";
      author = "Frank Dedden";
      homepage = "";
      url = "";
      synopsis = "C-like AST to simplify writing C99 programs.";
      description = "This package is a wrapper on top of 'language-c99'. It provides a simpler\ninterface more suited for writing C99 programs. It achieves this by\nimplementing its own C-like AST, supporting the most used C features. In\nturn, this AST is translated into actual C99 one, showing that it is an\nactual subset.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."language-c99" or ((hsPkgs.pkgs-errors).buildDepError "language-c99"))
          (hsPkgs."language-c99-util" or ((hsPkgs.pkgs-errors).buildDepError "language-c99-util"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }