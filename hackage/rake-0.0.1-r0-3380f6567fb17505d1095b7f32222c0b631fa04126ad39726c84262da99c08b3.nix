{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "rake"; version = "0.0.1"; };
      license = "LicenseRef-LGPL";
      copyright = "Copyright (c) Tobias Schoofs, 2015";
      maintainer = "Tobias Schoofs <tobias dot schoofs at gmx dot net>";
      author = "Tobias Schoofs";
      homepage = "http://github.com/toschoo/Haskell-Libs";
      url = "";
      synopsis = "Rapid Automatic Keyword Extraction (RAKE)";
      description = "Rapid Automatic Keyword Extraction (RAKE)\nis an algorithm to automatically extract keywords from documents.\nKeywords are sequences of one or more words that, together,\nprovide a compact representation of content (see reference below).\nRAKE is a well-known and widely used NLP technique,\nbut its concrete application depends a lot on factors like\nthe language in which the content is written,\nthe domain of the content and\nthe purpose of the keywords.\n\nThe implementation in this library is mainly aimed at English.\nWith additional resources, it is also applicable to other language.\nThe library is inspired by a similar implementation in Python\n(<https://github.com/aneesha/RAKE>).\n\nThe algorithm is described, for instance, in:\nRose, S., Engel, D., Cramer, N., & Cowley, W. (2010):\nAutomatic Keyword Extraction from Individual Documents.\nIn M. W. Berry & J. Kogan (Eds.),\nText Mining: Theory and Applications: John Wiley & Sons,\navailable online at:\n<http://www.cbs.dtu.dk/courses/introduction_to_systems_biology/chapter1_textmining.pdf>.\n\nMore information on this haskell library is available\non <https://github.com/toschoo/Haskell-Libs>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }