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
      specVersion = "1.12";
      identifier = { name = "jet"; version = "0.0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2021 Chris Penner";
      maintainer = "example@example.com";
      author = "Chris Penner";
      homepage = "https://github.com/ChrisPenner/jet#readme";
      url = "";
      synopsis = "";
      description = "Please see the README on GitHub at <https://github.com/ChrisPenner/jet#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."Hclip" or (errorHandler.buildDepError "Hclip"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
          (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
          (hsPkgs."recursive-zipper" or (errorHandler.buildDepError "recursive-zipper"))
          (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
          ];
        buildable = true;
        };
      exes = {
        "jet" = {
          depends = [
            (hsPkgs."Hclip" or (errorHandler.buildDepError "Hclip"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."jet" or (errorHandler.buildDepError "jet"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
            (hsPkgs."recursive-zipper" or (errorHandler.buildDepError "recursive-zipper"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      tests = {
        "jet-test" = {
          depends = [
            (hsPkgs."Hclip" or (errorHandler.buildDepError "Hclip"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-extra" or (errorHandler.buildDepError "aeson-extra"))
            (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
            (hsPkgs."ansi-terminal" or (errorHandler.buildDepError "ansi-terminal"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
            (hsPkgs."jet" or (errorHandler.buildDepError "jet"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."prettyprinter-ansi-terminal" or (errorHandler.buildDepError "prettyprinter-ansi-terminal"))
            (hsPkgs."recursion-schemes" or (errorHandler.buildDepError "recursion-schemes"))
            (hsPkgs."recursive-zipper" or (errorHandler.buildDepError "recursive-zipper"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
            (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
            (hsPkgs."unix" or (errorHandler.buildDepError "unix"))
            (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."vty" or (errorHandler.buildDepError "vty"))
            ];
          buildable = true;
          };
        };
      };
    }