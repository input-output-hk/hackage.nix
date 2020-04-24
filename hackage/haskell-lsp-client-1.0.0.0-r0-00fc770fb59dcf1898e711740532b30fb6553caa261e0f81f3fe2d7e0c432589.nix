{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "haskell-lsp-client"; version = "1.0.0.0"; };
      license = "GPL-2.0-only";
      copyright = "2017 Jaro Reinders";
      maintainer = "jaro.reinders@gmail.com";
      author = "Jaro Reinders";
      homepage = "https://github.com/noughtmare/haskell-lsp-client#readme";
      url = "";
      synopsis = "A haskell package to build your own Language Server client.";
      description = "This package is intended for developers of text editors who want to make their text editor\ncompatible with the <https://github.com/Microsoft/language-server-protocol/blob/master/protocol.md Language Server Protocol>.\nI have developed this package with plans to integrate it in the <https://github.com/yi-editor/yi Yi Editor>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."haskell-lsp" or ((hsPkgs.pkgs-errors).buildDepError "haskell-lsp"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      exes = {
        "example-client" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."haskell-lsp" or ((hsPkgs.pkgs-errors).buildDepError "haskell-lsp"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."haskell-lsp-client" or ((hsPkgs.pkgs-errors).buildDepError "haskell-lsp-client"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ] ++ (if system.isWindows
            then [
              (hsPkgs."Win32" or ((hsPkgs.pkgs-errors).buildDepError "Win32"))
              ]
            else [
              (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
              ]);
          buildable = true;
          };
        };
      };
    }