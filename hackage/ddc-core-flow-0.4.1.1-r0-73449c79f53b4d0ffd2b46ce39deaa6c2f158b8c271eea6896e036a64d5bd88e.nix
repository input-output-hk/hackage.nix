{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "ddc-core-flow"; version = "0.4.1.1"; };
      license = "MIT";
      copyright = "";
      maintainer = "Ben Lippmeier <benl@ouroborus.net>";
      author = "The Disciplined Disciple Compiler Strike Force";
      homepage = "http://disciple.ouroborus.net";
      url = "";
      synopsis = "Disciplined Disciple Compiler data flow compiler.";
      description = "Disciple Core Flow is a Domain Specific Language (DSL) for writing first\norder data flow programs.\nThis package provides the language definition as a fragment of Disciple\nCore. It also provides an implementation of the lowering transform which\nconverts data flow programs into imperative nested loop code.\nThe @repa-plugin@ package provides a GHC plugin that transforms GHC core\nprograms gained from vanilla Haskell sources. Use this package if you\njust want to write and run real programs.\nAlternatively, Disciple Core Flow programs can be transformed directly\nvia the @ddc@ or @ddci-core@ command line interfaces, but DDC itself\ndoesn't provide full compilation to machine code. Use GHC and the\n@repa-plugin@ for that.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."ddc-base" or ((hsPkgs.pkgs-errors).buildDepError "ddc-base"))
          (hsPkgs."ddc-core" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core"))
          (hsPkgs."ddc-core-salt" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-salt"))
          (hsPkgs."ddc-core-simpl" or ((hsPkgs.pkgs-errors).buildDepError "ddc-core-simpl"))
          ];
        buildable = true;
        };
      };
    }