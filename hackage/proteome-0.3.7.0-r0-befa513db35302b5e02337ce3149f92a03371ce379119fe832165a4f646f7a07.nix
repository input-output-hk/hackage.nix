{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "proteome"; version = "0.3.7.0"; };
      license = "MIT";
      copyright = "2018 Torsten Schmits";
      maintainer = "tek@tryp.io";
      author = "Torsten Schmits";
      homepage = "https://github.com/tek/proteome-hs#readme";
      url = "";
      synopsis = "neovim project manager";
      description = "Please see the README on GitHub at <https://github.com/tek/proteome-hs>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."messagepack" or ((hsPkgs.pkgs-errors).buildDepError "messagepack"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."nvim-hs" or ((hsPkgs.pkgs-errors).buildDepError "nvim-hs"))
          (hsPkgs."pretty-terminal" or ((hsPkgs.pkgs-errors).buildDepError "pretty-terminal"))
          (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."strings" or ((hsPkgs.pkgs-errors).buildDepError "strings"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          ];
        buildable = true;
        };
      exes = {
        "proteome" = {
          depends = [
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."messagepack" or ((hsPkgs.pkgs-errors).buildDepError "messagepack"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."nvim-hs" or ((hsPkgs.pkgs-errors).buildDepError "nvim-hs"))
            (hsPkgs."pretty-terminal" or ((hsPkgs.pkgs-errors).buildDepError "pretty-terminal"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."proteome" or ((hsPkgs.pkgs-errors).buildDepError "proteome"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."strings" or ((hsPkgs.pkgs-errors).buildDepError "strings"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      tests = {
        "proteome-functional" = {
          depends = [
            (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."messagepack" or ((hsPkgs.pkgs-errors).buildDepError "messagepack"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."nvim-hs" or ((hsPkgs.pkgs-errors).buildDepError "nvim-hs"))
            (hsPkgs."pretty-terminal" or ((hsPkgs.pkgs-errors).buildDepError "pretty-terminal"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."proteome" or ((hsPkgs.pkgs-errors).buildDepError "proteome"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."strings" or ((hsPkgs.pkgs-errors).buildDepError "strings"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        "proteome-unit" = {
          depends = [
            (hsPkgs."HTF" or ((hsPkgs.pkgs-errors).buildDepError "HTF"))
            (hsPkgs."MissingH" or ((hsPkgs.pkgs-errors).buildDepError "MissingH"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."data-default-class" or ((hsPkgs.pkgs-errors).buildDepError "data-default-class"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."hslogger" or ((hsPkgs.pkgs-errors).buildDepError "hslogger"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."messagepack" or ((hsPkgs.pkgs-errors).buildDepError "messagepack"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."nvim-hs" or ((hsPkgs.pkgs-errors).buildDepError "nvim-hs"))
            (hsPkgs."pretty-terminal" or ((hsPkgs.pkgs-errors).buildDepError "pretty-terminal"))
            (hsPkgs."prettyprinter" or ((hsPkgs.pkgs-errors).buildDepError "prettyprinter"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."proteome" or ((hsPkgs.pkgs-errors).buildDepError "proteome"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."strings" or ((hsPkgs.pkgs-errors).buildDepError "strings"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."unliftio" or ((hsPkgs.pkgs-errors).buildDepError "unliftio"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }