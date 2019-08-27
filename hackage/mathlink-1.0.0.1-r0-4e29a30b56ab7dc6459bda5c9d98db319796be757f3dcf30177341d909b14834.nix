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
    flags = { 32bit = false; };
    package = {
      specVersion = "1.6";
      identifier = { name = "mathlink"; version = "1.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) Tracy Wadleigh 2008, 2009";
      maintainer = "<tracy.wadleigh@gmail.com>";
      author = "Tracy Wadleigh";
      homepage = "http://community.haskell.org/~TracyWadleigh/mathlink";
      url = "";
      synopsis = "Call Haskell from Mathematica";
      description = "Provides a simple way to expose Haskell functions to /Mathematica/ via the\n/MathLink/ interface.\n\nOne defines a Haskell function of type @IO ()@ and provides a pair of\n'String's that function analogously to the @:Pattern:@ and @:Arguments:@\ndirectives for /Mathematica/'s @mprep@ utility.\n\nData whose types are instances of the 'Expressible' class can be marshaled\nto\\/from /Mathematica/. The library already provides instances for many\ndata types, including tuples, lists, and unboxed arrays.\n\nThe library does not use or require @foreign export@ declarations, so may\nbe used interactively.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."array" or (buildDepError "array"))
          ];
        libs = if system.isI386 || flags.32bit
          then [ (pkgs."ML32i3" or (sysDepError "ML32i3")) ]
          else [ (pkgs."ML64i3" or (sysDepError "ML64i3")) ];
        };
      };
    }