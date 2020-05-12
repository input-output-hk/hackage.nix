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
      specVersion = "1.2";
      identifier = { name = "nixos-types"; version = "1.4"; };
      license = "BSD-3-Clause";
      copyright = "Peter Simons, Andres Loeh";
      maintainer = "Nix Developers <nix-dev@lists.science.uu.nl>";
      author = "Peter Simons <simons@cryp.to>, Andres Loeh <mail@andres-loeh.de>";
      homepage = "http://github.com/haskell4nix/cabal2nix";
      url = "";
      synopsis = "this package is obsolete; see cabal2nix instead";
      description = "This package is obsolete. It's functionality has been merged into <http://hackage.haskell.org/package/cabal2nix>.";
      buildType = "Simple";
      };
    components = { "library" = { buildable = true; }; };
    }