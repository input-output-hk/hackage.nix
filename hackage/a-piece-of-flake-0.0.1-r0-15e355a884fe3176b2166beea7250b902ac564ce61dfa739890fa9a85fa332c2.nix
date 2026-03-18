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
      specVersion = "3.0";
      identifier = { name = "a-piece-of-flake"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Daniil Iaitkov 2026";
      maintainer = "dyaitskov@gmail.com";
      author = "Daniil Iaitskov";
      homepage = "http://github.com/yaitskov/a-piece-of-flake";
      url = "";
      synopsis = "Nix flake repository for everyone";
      description = "The main idea behind this project is to provide a quick and simple\ninterface for publishing Nix flakes.\n\nFlakes have become relatively mature and address the central repository\nissue. However, the Nixpkgs repository on GitHub still has more that 5k\nopen issues and a comparable number of pull requests, and continues to\nreceive many commits every day. Getting a pull request for a new tool\nmerged into Nixpkgs can be difficult - the Nixpkgs README explicitly\ndiscourages people from submitting their “pet” projects.\n\nThe Nixpkgs repository is huge. It contains more than 120k packages, but\nthe majority of them are not native to Nix. For example, about 10% are\nHaskell packages imported. Therefore, this large number cannot be used\nas a reliable measure of how well the publishing process is developed in\nNix. For instance, the PyPy repository alone currently contains almost\n900k packages.\n\nIt is also important to note Python is the most popular general-purpose\nprogramming language, and its publishing process was designed by\nprogrammers for programmers. Yet there is no pull-request step in the\nworkflow. The interface is essentially “upload and forget”, which has a\nsignificant positive impact on the conversion funnel of Python packages.\n\nFlakes are easy to install, but the publishing workflow is not yet\npolished enough. The current approach to distributing flakes appears to\nhave inherinted many characteristics of the Nixpkgs workflow.\n\nFor Nixpkgs, this was the natural way of development, because all\nderivations form a large and coupled Nix expression split across many\nfiles within a single Git repository.\n\n== Service\n#service#\n\nThe service is deployed at\n<https://pieceofflakenixrepository.org/ a-piece-of-flake>\n\n== Development environment\n#development-environment#\n\n> $ nix develop\n> $ emacs &\n> $ cabal build\n> $ cabal test\n\n=== Update cachix\n#update-cachix#\n\n> nix build --no-link --print-out-paths | cachix push piece-of-flake\n\n==== Cachix public key\n#cachix-public-key#\n\n> piece-of-flake.cachix.org-1:JamWDEABLpvWhGHIK7Xn/qYFbdZqb6ne7IAF62fXyFY=\n\n== Release\n#release#\n\n> $ nix build $(e -static true)\n> $ ./result/bin/a-piece-of-flake run";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
          (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
          (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
          (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
          (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
          (hsPkgs."acid-state" or (errorHandler.buildDepError "acid-state"))
          (hsPkgs."add-dependent-file" or (errorHandler.buildDepError "add-dependent-file"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-pretty" or (errorHandler.buildDepError "aeson-pretty"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."blaze-markup" or (errorHandler.buildDepError "blaze-markup"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."cryptohash-sha1" or (errorHandler.buildDepError "cryptohash-sha1"))
          (hsPkgs."deepseq" or (errorHandler.buildDepError "deepseq"))
          (hsPkgs."either" or (errorHandler.buildDepError "either"))
          (hsPkgs."exceptions" or (errorHandler.buildDepError "exceptions"))
          (hsPkgs."file-embed" or (errorHandler.buildDepError "file-embed"))
          (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
          (hsPkgs."full-text-search" or (errorHandler.buildDepError "full-text-search"))
          (hsPkgs."generics-sop" or (errorHandler.buildDepError "generics-sop"))
          (hsPkgs."hostname" or (errorHandler.buildDepError "hostname"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."list-t" or (errorHandler.buildDepError "list-t"))
          (hsPkgs."lrucaching" or (errorHandler.buildDepError "lrucaching"))
          (hsPkgs."monad-logger" or (errorHandler.buildDepError "monad-logger"))
          (hsPkgs."memory" or (errorHandler.buildDepError "memory"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."non-empty" or (errorHandler.buildDepError "non-empty"))
          (hsPkgs."non-negative-time-diff" or (errorHandler.buildDepError "non-negative-time-diff"))
          (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
          (hsPkgs."process" or (errorHandler.buildDepError "process"))
          (hsPkgs."psqueues" or (errorHandler.buildDepError "psqueues"))
          (hsPkgs."ref-tf" or (errorHandler.buildDepError "ref-tf"))
          (hsPkgs."refined" or (errorHandler.buildDepError "refined"))
          (hsPkgs."regex-tdfa" or (errorHandler.buildDepError "regex-tdfa"))
          (hsPkgs."req" or (errorHandler.buildDepError "req"))
          (hsPkgs."retry" or (errorHandler.buildDepError "retry"))
          (hsPkgs."ring-buffer" or (errorHandler.buildDepError "ring-buffer"))
          (hsPkgs."safecopy" or (errorHandler.buildDepError "safecopy"))
          (hsPkgs."sop-core" or (errorHandler.buildDepError "sop-core"))
          (hsPkgs."statistics" or (errorHandler.buildDepError "statistics"))
          (hsPkgs."stm-containers" or (errorHandler.buildDepError "stm-containers"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."tar" or (errorHandler.buildDepError "tar"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."text-zipper" or (errorHandler.buildDepError "text-zipper"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."time-units" or (errorHandler.buildDepError "time-units"))
          (hsPkgs."tokenize" or (errorHandler.buildDepError "tokenize"))
          (hsPkgs."trace-embrace" or (errorHandler.buildDepError "trace-embrace"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
          (hsPkgs."wl-pprint-text" or (errorHandler.buildDepError "wl-pprint-text"))
        ];
        buildable = true;
      };
      exes = {
        "a-piece-of-flake" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."a-piece-of-flake" or (errorHandler.buildDepError "a-piece-of-flake"))
          ];
          buildable = true;
        };
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."relude" or (errorHandler.buildDepError "relude"))
            (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"))
            (hsPkgs."unliftio" or (errorHandler.buildDepError "unliftio"))
            (hsPkgs."yesod-core" or (errorHandler.buildDepError "yesod-core"))
            (hsPkgs."a-piece-of-flake" or (errorHandler.buildDepError "a-piece-of-flake"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."QuickCheck" or (errorHandler.buildDepError "QuickCheck"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-discover" or (errorHandler.buildDepError "tasty-discover"))
            (hsPkgs."tasty-hunit" or (errorHandler.buildDepError "tasty-hunit"))
            (hsPkgs."tasty-quickcheck" or (errorHandler.buildDepError "tasty-quickcheck"))
          ];
          buildable = true;
        };
      };
    };
  }