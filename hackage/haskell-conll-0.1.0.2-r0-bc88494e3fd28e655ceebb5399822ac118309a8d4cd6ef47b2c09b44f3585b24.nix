{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "haskell-conll"; version = "0.1.0.2"; };
      license = "MIT";
      copyright = "Copyright: (c) 2017-2019 Michal Gajda,\nSergey Bushnyak,\nAlejandro Duran-Pallares";
      maintainer = "sergey.bushnyak@sigrlami.eu";
      author = "Michal Gajda,\nSergey Bushnyak,\nAlejandro Duran-Pallares";
      homepage = "https://github.com/sigrlami/haskell-conll#readme";
      url = "";
      synopsis = "Core Types for NLP";
      description = "Provides core types to work with CoreNLP, SyntaxNet. Handling CoNLL format and Syntax Trees.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."pretty-show" or ((hsPkgs.pkgs-errors).buildDepError "pretty-show"))
          (hsPkgs."protolude" or ((hsPkgs.pkgs-errors).buildDepError "protolude"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }