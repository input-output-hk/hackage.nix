{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { ghc_6_10 = true; ghc_6_8 = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "uniplate"; version = "1.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2006-8, Neil Mitchell";
      maintainer = "ndmitchell@gmail.com";
      author = "Neil Mitchell";
      homepage = "http://www-users.cs.york.ac.uk/~ndm/uniplate/";
      url = "";
      synopsis = "Uniform type generic traversals.";
      description = "Uniplate is a boilerplate removal library, with similar goals to the\noriginal Scrap Your Boilerplate work. It requires few extensions to\nHaskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.ghc_6_10
          then [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            ]
          else if flags.ghc_6_8
            then [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              ]
            else [
              (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
              (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
              ];
        buildable = true;
        };
      };
    }