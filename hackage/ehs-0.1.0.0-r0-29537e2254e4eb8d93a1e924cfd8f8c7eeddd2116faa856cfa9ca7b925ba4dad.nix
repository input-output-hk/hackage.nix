{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ehs"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "Copyright (C) 2014, Yu Fukuzawa";
      maintainer = "Yu Fukuzawa <minpou.primer@gmail.com>";
      author = "Yu Fukuzawa";
      homepage = "http://github.com/minpou/ehs/";
      url = "";
      synopsis = "embedded Haskell by using quasiquotes.";
      description = "embedded Haskell by using quasiquotes.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
          ];
        buildable = true;
        };
      };
    }