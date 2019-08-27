let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
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
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."text" or (buildDepError "text"))
          ];
        };
      };
    }