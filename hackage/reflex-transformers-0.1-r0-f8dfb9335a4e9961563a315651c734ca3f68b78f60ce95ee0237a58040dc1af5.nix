{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "reflex-transformers"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (C) 2015 Oliver Batchelor";
      maintainer = "saulzar@gmail.com";
      author = "Oliver Batchelor";
      homepage = "http://github.com/saulzar/reflex-transformers";
      url = "";
      synopsis = "Collections and switchable Monad transformers for Reflex";
      description = "This library provides a set of Monad transformers (and instances for common transformers) on top of\nwidget switching primitives for reflex. For example ReaderT and WriterT which operate in the presence\nof widget switching, allowing you to pass inputs and outputs up and down the UI tree.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."reflex" or ((hsPkgs.pkgs-errors).buildDepError "reflex"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."stateWriter" or ((hsPkgs.pkgs-errors).buildDepError "stateWriter"))
          ];
        buildable = true;
        };
      };
    }