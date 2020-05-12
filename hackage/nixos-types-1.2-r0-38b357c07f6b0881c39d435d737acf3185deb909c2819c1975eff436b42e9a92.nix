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
      identifier = { name = "nixos-types"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "Peter Simons, Andres Loeh";
      maintainer = "Nix Developers <nix-dev@lists.science.uu.nl>";
      author = "Peter Simons <simons@cryp.to>, Andres Loeh <mail@andres-loeh.de>";
      homepage = "http://github.com/haskell4nix/nixos-types";
      url = "";
      synopsis = "Data types representing the Nix language";
      description = "This library provides a collection of data types that represent the\nNix language <http://nixos.org/>.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."regex-posix" or (errorHandler.buildDepError "regex-posix"))
          (hsPkgs."pretty" or (errorHandler.buildDepError "pretty"))
          (hsPkgs."Cabal" or (errorHandler.buildDepError "Cabal"))
          ];
        buildable = true;
        };
      };
    }