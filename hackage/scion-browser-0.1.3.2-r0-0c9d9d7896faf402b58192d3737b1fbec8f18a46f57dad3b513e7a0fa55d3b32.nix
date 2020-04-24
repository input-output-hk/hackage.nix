{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "scion-browser"; version = "0.1.3.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Alejandro Serrano <trupill@gmail.com>";
      author = "Alejandro Serrano <trupill@gmail.com>";
      homepage = "http://github.com/serras/scion-class-browser";
      url = "";
      synopsis = "Command-line interface for browsing and searching packages documentation";
      description = "Scion Browser aims to be a command-line interface for getting information about installed Haskell packages, that could be later used by development environments. It also provides integration with Hoogle. By now, it has been integrated in EclipseFP.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
          (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
          (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
          (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."aeson-native" or ((hsPkgs.pkgs-errors).buildDepError "aeson-native"))
          (hsPkgs."parallel-io" or ((hsPkgs.pkgs-errors).buildDepError "parallel-io"))
          (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
          (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
          ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (if compiler.isGhc && (compiler.version).ge "7.0"
          then [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            ]
          else [
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            ]);
        buildable = true;
        };
      exes = {
        "scion-browser" = {
          depends = ([
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."cereal" or ((hsPkgs.pkgs-errors).buildDepError "cereal"))
            (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))
            (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."tar" or ((hsPkgs.pkgs-errors).buildDepError "tar"))
            (hsPkgs."zlib" or ((hsPkgs.pkgs-errors).buildDepError "zlib"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
            (hsPkgs."aeson-native" or ((hsPkgs.pkgs-errors).buildDepError "aeson-native"))
            (hsPkgs."parallel-io" or ((hsPkgs.pkgs-errors).buildDepError "parallel-io"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            ] ++ (pkgs.lib).optional (!system.isWindows) (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))) ++ (if compiler.isGhc && (compiler.version).ge "7.0"
            then [
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
              (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
              ]
            else [
              (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
              (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
              (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
              (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
              ]);
          buildable = true;
          };
        };
      };
    }