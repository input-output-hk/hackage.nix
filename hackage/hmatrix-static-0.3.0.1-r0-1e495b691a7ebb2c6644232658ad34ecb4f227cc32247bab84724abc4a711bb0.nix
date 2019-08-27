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
      specVersion = "1.6";
      identifier = { name = "hmatrix-static"; version = "0.3.0.1"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Reiner Pope <reiner.pope@gmail.com>";
      author = "Reiner Pope";
      homepage = "http://code.haskell.org/hmatrix-static/";
      url = "";
      synopsis = "hmatrix with vector and matrix sizes encoded in types";
      description = "A thin, lightweight wrapper over hmatrix to support\nstatic checking of matrix and vector sizes (for instance,\naddition of different-sized vectors will be disallowed\nat compile-time).\n\nObjects whose sizes are not statically known are given\nthe special size 'Unknown', which allows a syntactically\ncheap way to step down to the statically unchecked system\nof hmatrix. This is cheap in comparison to representing\nunknown sizes with exisential types, which forces pervasive\ncontinuation passing style.\n\nWARNING: when using the QuasiQuoting in this package,\nbe aware of infix expressions. See the note in\n\"Data.Packed.Static.Syntax\" for details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."tfp" or (buildDepError "tfp"))
          (hsPkgs."array" or (buildDepError "array"))
          (hsPkgs."haskell-src-meta" or (buildDepError "haskell-src-meta"))
          (hsPkgs."parsec" or (buildDepError "parsec"))
          (hsPkgs."template-haskell" or (buildDepError "template-haskell"))
          ];
        };
      };
    }