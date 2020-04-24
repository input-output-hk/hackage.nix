{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { test = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "doc-review"; version = "0.7.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "josh.hoyt@galois.com";
      author = "Josh Hoyt";
      homepage = "https://github.com/j3h/doc-review";
      url = "";
      synopsis = "Document review Web application, like http://book.realworldhaskell.org/";
      description = "A standalone Web application that provides for\nparagraph-by-paragraph commentary by document reviewers,\nbased on the user interface from\n<http://book.realworldhaskell.org/>. Any Web page can be\nconfigured to work with the service by adding just a\nlittle bit of Javascript that makes it load the comment\nWeb UI. See the README or the homepage for more information.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "doc-review" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."feed" or ((hsPkgs.pkgs-errors).buildDepError "feed"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            (hsPkgs."heist" or ((hsPkgs.pkgs-errors).buildDepError "heist"))
            (hsPkgs."hexpat" or ((hsPkgs.pkgs-errors).buildDepError "hexpat"))
            (hsPkgs."json" or ((hsPkgs.pkgs-errors).buildDepError "json"))
            (hsPkgs."MonadCatchIO-transformers" or ((hsPkgs.pkgs-errors).buildDepError "MonadCatchIO-transformers"))
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."monads-fd" or ((hsPkgs.pkgs-errors).buildDepError "monads-fd"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
            (hsPkgs."snap-core" or ((hsPkgs.pkgs-errors).buildDepError "snap-core"))
            (hsPkgs."snap-server" or ((hsPkgs.pkgs-errors).buildDepError "snap-server"))
            (hsPkgs."sqlite" or ((hsPkgs.pkgs-errors).buildDepError "sqlite"))
            (hsPkgs."tagchup" or ((hsPkgs.pkgs-errors).buildDepError "tagchup"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."xhtml-combinators" or ((hsPkgs.pkgs-errors).buildDepError "xhtml-combinators"))
            (hsPkgs."xml" or ((hsPkgs.pkgs-errors).buildDepError "xml"))
            (hsPkgs."xml-basic" or ((hsPkgs.pkgs-errors).buildDepError "xml-basic"))
            ];
          buildable = true;
          };
        "doc-review-test" = {
          depends = (pkgs.lib).optionals (flags.test) [
            (hsPkgs."MonadRandom" or ((hsPkgs.pkgs-errors).buildDepError "MonadRandom"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = if flags.test then true else false;
          };
        };
      };
    }