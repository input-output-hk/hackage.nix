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
      specVersion = "1.8";
      identifier = { name = "CC-delcont-cxe"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "shelarcy <shelarcy@gmail.com>";
      author = "Oleg Kiselyov";
      homepage = "";
      url = "";
      synopsis = "A monad transformers for multi-prompt delimited control";
      description = "Oleg Kiselyov's three new monad transformers for multi-prompt delimited control\n(released with his permission)\n\nThis library implements the superset of the interface described in\n*   /A Monadic Framework for Delimited Continuations/,\nR. Kent Dybvig, Simon Peyton Jones, and Amr Sabry\nJFP, v17, N6, pp. 687--730, 2007.\n<http://www.cs.indiana.edu/cgi-bin/techreports/TRNNN.cgi?trnum=TR615>\n\nThis library's \"Control.Monad.CC.CCcxe\" is derived as a CPS version of\n<http://hackage.haskell.org/package/CC-delcont-exc>'s Control.Monad.CC.CCExc.\n\"Control.Monad.CC.CCcxe\" is sometimes more efficient; it is always less perspicuous.\nBoth libraries provide the identical interface and are interchangeable. It seems\nthat CC-delcont-exc's  Control.Monad.CC.CCExc is faster at delimited control but\nimposes more overhead on the conventional code; \"Control.Monad.CC.CCcxe\" is dual.\nIt pays to use \"Control.Monad.CC.CCcxe\" in code with long stretches of determinism\npunctuated by fits and restarts.\n\nSee the original article at <http://okmij.org/ftp/continuations/implementations.html#CC-monads>\nfor more information.\n\nThis package split multi-prompt delimited control from\n<http://hackage.haskell.org/package/liboleg> for usability.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          ];
        };
      };
    }