{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "bogre-banana"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "David Michael Taro Eichmann";
      maintainer = "EichmannD at gmail dot com";
      author = "David Eichmann";
      homepage = "";
      url = "";
      synopsis = "";
      description = "Boge-Banana is a 3D game engine using the Reactive-Banana FRP library, the HOIS library for input, and the HOGRE library for output. An introductory tutorial is avilable at http:\\/\\/www.haskell.org\\/haskellwiki\\/User_talk:DavidE.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."reactive-banana" or ((hsPkgs.pkgs-errors).buildDepError "reactive-banana"))
          (hsPkgs."hois" or ((hsPkgs.pkgs-errors).buildDepError "hois"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."hogre" or ((hsPkgs.pkgs-errors).buildDepError "hogre"))
          ];
        libs = [
          (pkgs."stdc++" or ((hsPkgs.pkgs-errors).sysDepError "stdc++"))
          ];
        buildable = true;
        };
      exes = {
        "bogre-banana-snake" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."hois" or ((hsPkgs.pkgs-errors).buildDepError "hois"))
            (hsPkgs."hogre" or ((hsPkgs.pkgs-errors).buildDepError "hogre"))
            ];
          buildable = true;
          };
        };
      };
    }