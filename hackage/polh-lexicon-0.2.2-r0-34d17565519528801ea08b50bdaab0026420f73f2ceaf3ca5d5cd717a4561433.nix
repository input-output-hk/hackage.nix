{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "polh-lexicon"; version = "0.2.2"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2012 IPI PAN";
      maintainer = "waszczuk.kuba@gmail.com";
      author = "Jakub Waszczuk";
      homepage = "https://github.com/kawu/polh/tree/master/lexicon";
      url = "";
      synopsis = "A library for manipulating the historical dictionary of Polish (deprecated)";
      description = "DEPRECATED.  Use <http://hackage.haskell.org/package/hist-pl-lexicon> instead.\n\nThe library provides a binary representation of the historical\ndictionary of Polish and language markup format (LMF) parsing\nutilities which allow to translate the original LMF representation\nof the dictionary to the binary form.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."text-binary" or ((hsPkgs.pkgs-errors).buildDepError "text-binary"))
          (hsPkgs."polysoup" or ((hsPkgs.pkgs-errors).buildDepError "polysoup"))
          (hsPkgs."dawg" or ((hsPkgs.pkgs-errors).buildDepError "dawg"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      exes = {
        "polh-binarize" = { buildable = true; };
        "polh-show" = { buildable = true; };
        };
      };
    }