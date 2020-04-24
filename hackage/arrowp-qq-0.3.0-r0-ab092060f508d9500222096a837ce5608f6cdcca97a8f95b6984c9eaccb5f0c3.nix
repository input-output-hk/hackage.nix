{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { debug = false; testexamples = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "arrowp-qq"; version = "0.3.0"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "John 'Ski <riuga@tuta.io>";
      author = "Jose Iborra <pepeiborra@gmail.com>";
      homepage = "https://github.com/pepeiborra/arrowp";
      url = "";
      synopsis = "A preprocessor and quasiquoter for translating arrow notation";
      description = "A suite of preprocessor and quasiquoter to desugar arrow notation built on top of Ross Paterson's arrowp and the venerable haskell-src-exts.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."NoHoed" or ((hsPkgs.pkgs-errors).buildDepError "NoHoed"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."haskell-src-exts-util" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts-util"))
          (hsPkgs."uniplate" or ((hsPkgs.pkgs-errors).buildDepError "uniplate"))
          (hsPkgs."haskell-src-meta" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-meta"))
          ] ++ (if flags.debug
          then [
            (hsPkgs."Hoed" or ((hsPkgs.pkgs-errors).buildDepError "Hoed"))
            (hsPkgs."haskell-src-exts-observe" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts-observe"))
            ]
          else [
            (hsPkgs."NoHoed" or ((hsPkgs.pkgs-errors).buildDepError "NoHoed"))
            ]);
        buildable = true;
        };
      exes = {
        "arrowp" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."arrowp-qq" or ((hsPkgs.pkgs-errors).buildDepError "arrowp-qq"))
            ] ++ (if flags.debug
            then [
              (hsPkgs."Hoed" or ((hsPkgs.pkgs-errors).buildDepError "Hoed"))
              ]
            else [
              (hsPkgs."NoHoed" or ((hsPkgs.pkgs-errors).buildDepError "NoHoed"))
              ]);
          buildable = true;
          };
        };
      tests = {
        "examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."arrows" or ((hsPkgs.pkgs-errors).buildDepError "arrows"))
            (hsPkgs."arrowp-qq" or ((hsPkgs.pkgs-errors).buildDepError "arrowp-qq"))
            (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
            ];
          buildable = if flags.testexamples then true else false;
          };
        };
      };
    }