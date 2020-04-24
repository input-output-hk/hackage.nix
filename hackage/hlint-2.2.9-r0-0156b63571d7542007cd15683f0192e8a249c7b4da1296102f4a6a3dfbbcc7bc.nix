{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { threaded = true; gpl = true; ghc-lib = false; };
    package = {
      specVersion = "1.18";
      identifier = { name = "hlint"; version = "2.2.9"; };
      license = "BSD-3-Clause";
      copyright = "Neil Mitchell 2006-2020";
      maintainer = "Neil Mitchell <ndmitchell@gmail.com>";
      author = "Neil Mitchell <ndmitchell@gmail.com>";
      homepage = "https://github.com/ndmitchell/hlint#readme";
      url = "";
      synopsis = "Source code suggestions";
      description = "HLint gives suggestions on how to improve your source code.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."file-embed" or ((hsPkgs.pkgs-errors).buildDepError "file-embed"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."cpphs" or ((hsPkgs.pkgs-errors).buildDepError "cpphs"))
          (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."haskell-src-exts-util" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts-util"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."ansi-terminal" or ((hsPkgs.pkgs-errors).buildDepError "ansi-terminal"))
          (hsPkgs."extra" or ((hsPkgs.pkgs-errors).buildDepError "extra"))
          (hsPkgs."refact" or ((hsPkgs.pkgs-errors).buildDepError "refact"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."filepattern" or ((hsPkgs.pkgs-errors).buildDepError "filepattern"))
          (hsPkgs."ghc-lib-parser-ex" or ((hsPkgs.pkgs-errors).buildDepError "ghc-lib-parser-ex"))
          ] ++ (if !flags.ghc-lib && (compiler.isGhc && (compiler.version).ge "8.8.0") && (compiler.isGhc && (compiler.version).lt "8.9.0")
          then [
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-boot-th" or ((hsPkgs.pkgs-errors).buildDepError "ghc-boot-th"))
            ]
          else [
            (hsPkgs."ghc-lib-parser" or ((hsPkgs.pkgs-errors).buildDepError "ghc-lib-parser"))
            ])) ++ (pkgs.lib).optional (flags.gpl) (hsPkgs."hscolour" or ((hsPkgs.pkgs-errors).buildDepError "hscolour"));
        buildable = true;
        };
      exes = {
        "hlint" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hlint" or ((hsPkgs.pkgs-errors).buildDepError "hlint"))
            ];
          buildable = true;
          };
        };
      };
    }