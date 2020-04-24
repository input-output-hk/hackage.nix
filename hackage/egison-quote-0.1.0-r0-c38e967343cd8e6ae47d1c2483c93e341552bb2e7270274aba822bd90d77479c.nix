{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "egison-quote"; version = "0.1.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "kuwahara111011@gmail.com";
      author = "Takuya Kuwahara";
      homepage = "https://github.com/xenophobia/Egison-Quote";
      url = "";
      synopsis = "A quasi quotes for using Egison expression in Haskell code";
      description = "A quasi quotes for using Egison expression in Haskell code.\nEgison is a purely functional language featured strong pattern matching faculty.\nThis package enable us to use (restricted) Egison expression in Haskell source code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."egison" or ((hsPkgs.pkgs-errors).buildDepError "egison"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          ];
        buildable = true;
        };
      };
    }