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
      specVersion = "1.8";
      identifier = { name = "cabal2nix"; version = "1.67"; };
      license = "BSD-3-Clause";
      copyright = "Peter Simons, Andres Loeh";
      maintainer = "Nix Developers <nix-dev@lists.science.uu.nl>";
      author = "Peter Simons <simons@cryp.to>, Andres Loeh <mail@andres-loeh.de>";
      homepage = "http://github.com/NixOS/cabal2nix";
      url = "";
      synopsis = "Convert Cabal files into Nix build instructions";
      description = "The @cabal2nix@ utility converts Cabal files into Nix build instructions. The\ncommandline syntax is:\n\n> Usage: cabal2nix [options] url-to-cabal-file\n>   -h             --help                   show this help text\n>                  --hackage-db=FILEPATH    path to the local hackage db in tar format\n>                  --sha256=HASH            sha256 hash of source tarball\n>   -m MAINTAINER  --maintainer=MAINTAINER  maintainer of this package (may be specified multiple times)\n>   -p PLATFORM    --platform=PLATFORM      supported build platforms (may be specified multiple times)\n>                  --jailbreak              don't honor version restrictions on build inputs\n>                  --no-haddock             don't run Haddock when building this package\n>                  --no-check               don't run regression test suites of this package\n>                  --no-hyperlink-source    don't add pretty-printed source code to the documentation\n>\n> Recognized URI schemes:\n>\n>   cabal://pkgname-pkgversion       download the specified package from Hackage\n>   cabal://pkgname                  download latest version of the specified package from Hackage\n>   http://host/path                 fetch the Cabal file via HTTP\n>   file:///local/path               load the Cabal file from the local disk\n>   /local/path                      abbreviated version of file URI\n\nThe only required argument is the path to the cabal file. For example:\n\n> cabal2nix http://hackage.haskell.org/packages/archive/cabal2nix/1.67/cabal2nix.cabal\n> cabal2nix cabal://cabal2nix-1.67\n\nIf the @--sha256@ option has not been specified, cabal2nix calls\n@nix-prefetch-url@ to determine the hash automatically. This causes\nnetwork traffic, obviously.";
      buildType = "Custom";
    };
    components = {
      exes = {
        "cabal2nix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."process" or (errorHandler.buildDepError "process"))
            (hsPkgs."HTTP" or (errorHandler.buildDepError "HTTP"))
            (hsPkgs."hackage-db" or (errorHandler.buildDepError "hackage-db"))
          ];
          buildable = true;
        };
        "hackage4nix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
            (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
            (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            (hsPkgs."filepath" or (errorHandler.buildDepError "filepath"))
            (hsPkgs."hackage-db" or (errorHandler.buildDepError "hackage-db"))
          ];
          buildable = true;
        };
      };
      tests = {
        "doctest-cabal2nix" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."doctest" or (errorHandler.buildDepError "doctest"))
          ];
          buildable = true;
        };
      };
    };
  }