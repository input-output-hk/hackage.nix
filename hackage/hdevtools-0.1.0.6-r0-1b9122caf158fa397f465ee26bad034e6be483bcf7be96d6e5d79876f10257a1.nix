{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hdevtools"; version = "0.1.0.6"; };
      license = "MIT";
      copyright = "See AUTHORS file";
      maintainer = "schell.scivally@synapsegroup.com";
      author = "Bit Connor";
      homepage = "https://github.com/bitc/hdevtools/";
      url = "";
      synopsis = "Persistent GHC powered background server for FAST haskell development tools";
      description = "'hdevtools' is a backend for text editor plugins, to allow for things such as\nsyntax and type checking of Haskell code, and retrieving type information, all\ndirectly from within your text editor.\n\nThe advantage that 'hdevtools' has over competitors, is that it runs silently\nin a persistent background process, and therefore is able to keeps all of your\nHaskell modules and dependent libraries loaded in memory. This way, when you\nchange only a single source file, only it needs to be reloaded and rechecked,\ninstead of having to reload everything.\n\nThis makes 'hdevtools' very fast for checking syntax and type errors (runs just\nas fast as the ':reload' command in GHCi).\n\nIn fact, syntax and type checking is so fast, that you can safely enable auto\nchecking on every save. Even for huge projects, checking is nearly instant.\n\nOnce you start using 'hdevtools' and you get used to having your errors shown\nto you instantly (without having to switch back and forth between GHCi and your\neditor), and shown directly on your code, in your editor (without having to\nwait forever for GHC to run) you will wonder how you ever lived without it.\n\nIn addition to checking Haskell source code for errors, 'hdevtools' has tools\nfor getting info about identifiers, and getting type information for snippets\nof code.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hdevtools" = {
          depends = ([
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."ghc" or ((hsPkgs.pkgs-errors).buildDepError "ghc"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
            (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            ] ++ (pkgs.lib).optional (compiler.isGhc && false) (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"))) ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).ge "7.7") (hsPkgs."Cabal" or ((hsPkgs.pkgs-errors).buildDepError "Cabal"));
          buildable = true;
          };
        };
      };
    }