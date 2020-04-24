{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cgrep"; version = "6.6.23"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Nicola Bonelli <nicola@pfq.io>";
      author = "Nicola Bonelli";
      homepage = "http://awgn.github.io/cgrep/";
      url = "";
      synopsis = "Command line tool";
      description = "Cgrep: a context-aware grep for source codes";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cgrep" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."dlist" or ((hsPkgs.pkgs-errors).buildDepError "dlist"))
            (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
            (hsPkgs."stringsearch" or ((hsPkgs.pkgs-errors).buildDepError "stringsearch"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."regex-base" or ((hsPkgs.pkgs-errors).buildDepError "regex-base"))
            (hsPkgs."regex-posix" or ((hsPkgs.pkgs-errors).buildDepError "regex-posix"))
            (hsPkgs."regex-pcre" or ((hsPkgs.pkgs-errors).buildDepError "regex-pcre"))
            (hsPkgs."either" or ((hsPkgs.pkgs-errors).buildDepError "either"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."unix-compat" or ((hsPkgs.pkgs-errors).buildDepError "unix-compat"))
            (hsPkgs."async" or ((hsPkgs.pkgs-errors).buildDepError "async"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."unicode-show" or ((hsPkgs.pkgs-errors).buildDepError "unicode-show"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ];
          buildable = true;
          };
        };
      };
    }