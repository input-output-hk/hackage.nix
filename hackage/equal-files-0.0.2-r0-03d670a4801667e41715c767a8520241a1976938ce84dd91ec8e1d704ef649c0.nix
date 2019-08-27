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
    flags = { splitbase = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "equal-files"; version = "0.0.2"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Henning Thielemann <haskell@henning-thielemann.de>";
      author = "Henning Thielemann <haskell@henning-thielemann.de>";
      homepage = "http://code.haskell.org/~thielema/equal-files";
      url = "";
      synopsis = "Shell command for finding equal files";
      description = "Shell command that finds files with equal content in a given set of files.\nThis is useful for finding duplicates in a set of documents\nwhere the same document might have been stored by accident with different names.\nUse it like\n\n> equal-files `find my_dir -type f`\n\nor\n\n> find my_dir -type f | xargs equal-files\n\nIf the file names contain spaces, better use\n\n> find my_dir -type f -printf \"'%p'\\n\" | xargs equal-files\n\nThe program reads all input files simultaneously,\ndriven by sorting and grouping of their content.\nHowever be prepared that due to the simultaneous access\nyou may exceed the admissible number of opened files.\n\nThe program can be used as a nice example of a declarative\nyet efficient implementation of a non-trivial algorithm,\nthat is enabled by lazy evaluation.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "equal-files" = {
          depends = [
            (hsPkgs."bytestring" or (buildDepError "bytestring"))
            ] ++ [ (hsPkgs."base" or (buildDepError "base")) ];
          };
        };
      };
    }