{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ion"; version = "1.0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Hodapp87@gmail.com";
      author = "Chris Hodapp";
      homepage = "https://haskellembedded.github.io/";
      url = "";
      synopsis = "EDSL for concurrent, realtime, embedded programming on top of Ivory";
      description = "Ion is a Haskell EDSL for concurrent, realtime, embedded programming.\nIt interfaces with the Ivory EDSL, <http://ivorylang.org/>, to perform\ncode generation.  It supports similar scheduling functionality to Atom\n(<https://hackage.haskell.org/package/atom>), and also accomodates\nasynchronous programming with continuation-passing style.\nBe forewarned that Ion is still heavily experimental.  For some\nfurther explanation, see the write-up at HaskellEmbedded,\n<https://haskellembedded.github.io/posts/2016-09-23-introducing-ion.html>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ivory" or ((hsPkgs.pkgs-errors).buildDepError "ivory"))
          (hsPkgs."ivory-backend-c" or ((hsPkgs.pkgs-errors).buildDepError "ivory-backend-c"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "ion_example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ivory" or ((hsPkgs.pkgs-errors).buildDepError "ivory"))
            (hsPkgs."ivory-backend-c" or ((hsPkgs.pkgs-errors).buildDepError "ivory-backend-c"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }