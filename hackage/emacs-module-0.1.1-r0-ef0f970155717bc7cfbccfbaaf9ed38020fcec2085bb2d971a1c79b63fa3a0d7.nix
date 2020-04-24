{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { assertions = false; module-assertions = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "emacs-module"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Sergey Vinokurov <serg.foo@gmail.com>";
      author = "Sergey Vinokurov";
      homepage = "https://github.com/sergv/emacs-module";
      url = "";
      synopsis = "Utilities to write Emacs dynamic modules";
      description = "This package provides a full set of bindings to emacs-module.h that\nallows to develop Emacs modules in Haskell. Bindings are based on\nEmacs 25 version of the interface and thus should work in all\nsubsequent versions of Emacs.\nFor pointers on how to write minimal Emacs module, please refer\nto https://github.com/sergv/emacs-module/blob/master/test/src/Emacs/TestsInit.hs";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."exceptions" or ((hsPkgs.pkgs-errors).buildDepError "exceptions"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."safe-exceptions-checked" or ((hsPkgs.pkgs-errors).buildDepError "safe-exceptions-checked"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."void" or ((hsPkgs.pkgs-errors).buildDepError "void"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "8.1") (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"));
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }