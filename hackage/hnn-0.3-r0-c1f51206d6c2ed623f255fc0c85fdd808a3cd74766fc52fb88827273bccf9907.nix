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
      identifier = { name = "hnn"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "2009-2016 Alp Mestanogullari, Gatlin Johnson";
      maintainer = "Alp Mestanogullari <alpmestan@gmail.com>";
      author = "Alp Mestanogullari <alpmestan@gmail.com>, Gatlin Johnson <rokenrol@gmail.com>";
      homepage = "http://github.com/alpmestan/hnn";
      url = "";
      synopsis = "A reasonably fast and simple neural network library";
      description = "\nA neural network library implemented purely in Haskell, relying on the\nhmatrix library.\n\nThis library provides a straight and simple feed-forward neural networks implementation which\nis way better than the one in hnn-0.1, in all aspects.\n\nYou can find a mini-tutorial in @AI.HNN.FF.Network@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."vector" or (buildDepError "vector"))
          (hsPkgs."mwc-random" or (buildDepError "mwc-random"))
          (hsPkgs."hmatrix" or (buildDepError "hmatrix"))
          (hsPkgs."random" or (buildDepError "random"))
          (hsPkgs."vector-binary-instances" or (buildDepError "vector-binary-instances"))
          (hsPkgs."binary" or (buildDepError "binary"))
          (hsPkgs."zlib" or (buildDepError "zlib"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          ];
        };
      };
    }