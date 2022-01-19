{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "rebase"; version = "1.15.0.2"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/rebase";
      url = "";
      synopsis = "A more progressive alternative to the \"base\" package";
      description = "This package is intended for those who are tired of keeping\nlong lists of dependencies to the same essential libraries in each package\nas well as the endless imports of the same APIs all over again.\nIt also supports the modern tendencies in the language.\n\nTo solve those problems this package does the following:\n\n* Reexport the original APIs under the \\\"Rebase\\\" namespace.\n\n* Export all the possible non-conflicting symbols from the \\\"Rebase.Prelude\\\" module.\n\n* Give priority to the modern practices in the conflicting cases.\n\nThe policy behind the package is only to reexport the non-ambiguous\nand non-controversial APIs, which the community has obviously settled on.\nThe package is intended to rapidly evolve with the contribution from the community,\nwith the missing features being added with pull-requests.\n\nIf you don\\'t need the \\\"Rebase\\\" namespace and want to import modules\nfrom the reexported packages as they are check out\n<https://hackage.haskell.org/package/rerebase the \"rerebase\" package>\nwhich simply reexports the original symbols in the original namespace.\nThus it simply lets you depend on all the de-facto default packages,\nby yourself having to maintain only the dependency on \\\"rerebase\\\".\nAlso it comes packed with a prelude as rich as here.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bifunctors" or (errorHandler.buildDepError "bifunctors"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."contravariant" or (errorHandler.buildDepError "contravariant"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."dlist" or (errorHandler.buildDepError "dlist"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."groups" or (errorHandler.buildDepError "groups"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."invariant" or (errorHandler.buildDepError "invariant"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."profunctors" or (errorHandler.buildDepError "profunctors"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."selective" or (errorHandler.buildDepError "selective"))
          (hsPkgs."semigroupoids" or (errorHandler.buildDepError "semigroupoids"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-compat" or (errorHandler.buildDepError "time-compat"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."uuid-types" or (errorHandler.buildDepError "uuid-types"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vector-instances" or (errorHandler.buildDepError "vector-instances"))
          (hsPkgs."void" or (errorHandler.buildDepError "void"))
          ];
        buildable = true;
        };
      };
    }