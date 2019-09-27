let
  buildDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (build dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  sysDepError = pkg:
    builtins.throw ''
      The Nixpkgs package set does not contain the package: ${pkg} (system dependency).
      
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      '';
  pkgConfDepError = pkg:
    builtins.throw ''
      The pkg-conf packages does not contain the package: ${pkg} (pkg-conf dependency).
      
      You may need to augment the pkg-conf package mapping in haskell.nix so that it can be found.
      '';
  exeDepError = pkg:
    builtins.throw ''
      The local executable components do not include the component: ${pkg} (executable dependency).
      '';
  legacyExeDepError = pkg:
    builtins.throw ''
      The Haskell package set does not contain the package: ${pkg} (executable dependency).
      
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
  buildToolDepError = pkg:
    builtins.throw ''
      Neither the Haskell package set or the Nixpkgs package set contain the package: ${pkg} (build tool dependency).
      
      If this is a system dependency:
      You may need to augment the system package mapping in haskell.nix so that it can be found.
      
      If this is a Haskell dependency:
      If you are using Stackage, make sure that you are using a snapshot that contains the package. Otherwise you may need to update the Hackage snapshot you are using, usually by updating haskell.nix.
      '';
in { system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "sneakyterm"; version = "0.1"; };
      license = "GPL-3.0-only";
      copyright = "Copyright (C) 2014-2015 Philipp Middendorf";
      maintainer = "pmidden@secure.mailbox.org";
      author = "Philipp Middendorf";
      homepage = "https://github.com/pmiddend/sneakyterm";
      url = "";
      synopsis = "Tiny, declarative wrapper around ncurses";
      description = "`SneakyTerm` gives you 'MonadTerminal' which gives you two operations, 'tmRender' to render a list of tiles, and 'tmCharEvent' to wait for character input. A simple example:\n\n> main = do\n>   let viewport = rectFromOriginAndDim (V2 0 0) (V2 80 25)\n>   runTerminal viewport \$ do\n>     tmRender [Tile (V2 10 10) '@' (ColorPair Red Blue)]\n>     _ <- tmCharEvent\n>     return ()\n\nThis will render a red `@` at column 11, line 11, with blue background.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."linear" or (buildDepError "linear"))
          (hsPkgs."lens" or (buildDepError "lens"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."ncurses" or (buildDepError "ncurses"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."classy-prelude" or (buildDepError "classy-prelude"))
          ];
        buildable = true;
        };
      };
    }