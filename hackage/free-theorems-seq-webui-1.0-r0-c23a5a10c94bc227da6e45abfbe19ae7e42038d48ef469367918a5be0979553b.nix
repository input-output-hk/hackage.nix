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
      identifier = { name = "free-theorems-seq-webui"; version = "1.0"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "ds@iai.uni-bonn.de";
      author = "Daniel Seidel";
      homepage = "";
      url = "";
      synopsis = "Taming Selective Strictness";
      description = "This package provides access to the functionality of\n<http://hackage.haskell.org/package/free-theorems-seq> through a web interface.\n\nAn online version of the interface is running at <http://www-ps.iai.uni-bonn.de/cgi-bin/polyseq.cgi>.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "free-theorems-seq-webui.cgi" = {
          depends = [
            (hsPkgs."cgi" or (buildDepError "cgi"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."free-theorems-seq" or (buildDepError "free-theorems-seq"))
            (hsPkgs."mtl" or (buildDepError "mtl"))
            (hsPkgs."network" or (buildDepError "network"))
            (hsPkgs."pretty" or (buildDepError "pretty"))
            (hsPkgs."utf8-string" or (buildDepError "utf8-string"))
            (hsPkgs."xhtml" or (buildDepError "xhtml"))
            ] ++ (if compiler.isGhc && (compiler.version).ge "6.10"
            then [
              (hsPkgs."base" or (buildDepError "base"))
              (hsPkgs."syb" or (buildDepError "syb"))
              ]
            else [ (hsPkgs."base" or (buildDepError "base")) ]);
          };
        };
      };
    }