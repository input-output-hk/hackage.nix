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
    flags = { base4 = true; ghc76 = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "hsp"; version = "0.7.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Niklas Broberg <niklas.broberg@gmail.com>";
      author = "Niklas Broberg, Joel Bjornson";
      homepage = "http://patch-tag.com/r/nibro/hsp";
      url = "";
      synopsis = "Haskell Server Pages is a library for writing dynamic server-side web pages.";
      description = "Haskell Server Pages (HSP) is an extension of vanilla Haskell, targetted at the task of\nwriting dynamic server-side web pages. Features include:\n\n* Embedded XML syntax\n\n* A (low-to-mid-level) programming model for writing dynamic web pages\n\n* A cgi-handler utility (as a separate package, hsp-cgi)\n\nFor details on usage, please see the website, and the author's thesis.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."mtl" or (buildDepError "mtl"))
          (hsPkgs."harp" or (buildDepError "harp"))
          (hsPkgs."hsx" or (buildDepError "hsx"))
          (hsPkgs."HJScript" or (buildDepError "HJScript"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ [ (hsPkgs."base" or (buildDepError "base")) ]) ++ (if flags.ghc76
          then [
            (hsPkgs."ghc" or (buildDepError "ghc"))
            (hsPkgs."old-exception" or (buildDepError "old-exception"))
            ]
          else [ (hsPkgs."ghc" or (buildDepError "ghc")) ]);
        };
      };
    }