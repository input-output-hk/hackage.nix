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
    flags = { ghcflags = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "stack2cabal"; version = "1.0.5"; };
      license = "GPL-3.0-or-later";
      copyright = "2018 Tseen She";
      maintainer = "Tseen She";
      author = "Tseen She";
      homepage = "";
      url = "";
      synopsis = "Convert stack projects to cabal.project + cabal.project.freeze";
      description = "Convert @stack.yaml@ \\/ @package.yaml@ to @cabal.project@ \\/ @cabal.project.freeze@\\/ @*.cabal@.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."bytestring" or (buildDepError "bytestring"))
          (hsPkgs."Cabal" or (buildDepError "Cabal"))
          (hsPkgs."containers" or (buildDepError "containers"))
          (hsPkgs."directory" or (buildDepError "directory"))
          (hsPkgs."extra" or (buildDepError "extra"))
          (hsPkgs."filepath" or (buildDepError "filepath"))
          (hsPkgs."hpack" or (buildDepError "hpack"))
          (hsPkgs."HsYAML" or (buildDepError "HsYAML"))
          (hsPkgs."http-client" or (buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
          (hsPkgs."text" or (buildDepError "text"))
          ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or (buildDepError "ghcflags"));
        build-tools = (pkgs.lib).optional (flags.ghcflags) (hsPkgs.buildPackages.hsinspect or (pkgs.buildPackages.hsinspect or (buildToolDepError "hsinspect")));
        buildable = true;
        };
      exes = {
        "stack2cabal" = {
          depends = [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            (hsPkgs."Cabal" or (buildDepError "Cabal"))
            (hsPkgs."containers" or (buildDepError "containers"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."extra" or (buildDepError "extra"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."hpack" or (buildDepError "hpack"))
            (hsPkgs."HsYAML" or (buildDepError "HsYAML"))
            (hsPkgs."http-client" or (buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (buildDepError "http-client-tls"))
            (hsPkgs."text" or (buildDepError "text"))
            (hsPkgs."stack2cabal" or (buildDepError "stack2cabal"))
            ] ++ (pkgs.lib).optional (flags.ghcflags) (hsPkgs."ghcflags" or (buildDepError "ghcflags"));
          build-tools = (pkgs.lib).optional (flags.ghcflags) (hsPkgs.buildPackages.hsinspect or (pkgs.buildPackages.hsinspect or (buildToolDepError "hsinspect")));
          buildable = true;
          };
        };
      };
    }