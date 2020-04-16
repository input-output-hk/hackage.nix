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
    flags = { test-hlint = false; test-doc-coverage = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "keera-hails-reactive-wx"; version = "0.5.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "support@keera.co.uk";
      author = "Ivan Perez";
      homepage = "http://www.keera.co.uk/blog/community/";
      url = "";
      synopsis = "Haskell on Rails - Reactive Fields for WX widgets";
      description = "This package contains (incomplete) bindings to WX widget properties, turning\nthem into Reactive Values that can be combined with and connected to others\nwith Reactive Rules.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (buildDepError "base"))
          (hsPkgs."wxcore" or (buildDepError "wxcore"))
          (hsPkgs."wx" or (buildDepError "wx"))
          (hsPkgs."keera-hails-reactivevalues" or (buildDepError "keera-hails-reactivevalues"))
          ];
        buildable = true;
        };
      tests = {
        "hlint" = {
          depends = (pkgs.lib).optionals (!(!flags.test-hlint)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."hlint" or (buildDepError "hlint"))
            ];
          buildable = if !flags.test-hlint then false else true;
          };
        "haddock-coverage" = {
          depends = (pkgs.lib).optionals (!(!flags.test-doc-coverage)) [
            (hsPkgs."base" or (buildDepError "base"))
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."filepath" or (buildDepError "filepath"))
            (hsPkgs."process" or (buildDepError "process"))
            (hsPkgs."regex-posix" or (buildDepError "regex-posix"))
            ];
          buildable = if !flags.test-doc-coverage then false else true;
          };
        };
      };
    }