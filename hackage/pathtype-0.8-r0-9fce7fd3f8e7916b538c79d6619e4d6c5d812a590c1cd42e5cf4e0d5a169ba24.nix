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
    flags = { old-time = true; buildtools = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "pathtype"; version = "0.8"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "haskell@henning-thielemann.de, ben@moseley.name";
      author = "Ben Moseley, Ben Millwood, Henning Thielemann";
      homepage = "http://hub.darcs.net/thielema/pathtype/";
      url = "";
      synopsis = "Type-safe replacement for System.FilePath etc";
      description = "This package provides type-safe access to filepath manipulations.\n\n\"System.Path\" is designed to be used instead of \"System.FilePath\".\n(It is intended to provide versions of functions from that\nmodule which have equivalent functionality but are more typesafe).\n\"System.Path.Directory\" is a companion module\nproviding a type-safe alternative to \"System.Directory\".\n\nThe heart of this package is the @'Path' ar fd@ abstract type\nwhich represents file and directory paths.\nThe idea is that there are two type parameters -\nthe first should be 'Abs' or 'Rel', and the second 'File' or 'Dir'.\nA number of type synonyms are provided for common types:\n\n> type Path.AbsFile = Path Abs File\n> type Path.RelFile = Path Rel File\n> type Path.AbsDir  = Path Abs Dir\n> type Path.RelDir  = Path Rel Dir\n>\n> type Path.Abs  fd = Path Abs fd\n> type Path.Rel  fd = Path Rel fd\n> type Path.File ar = Path ar File\n> type Path.Dir  ar = Path ar Dir\n\nThe type of the 'combine' (aka '</>') function gives the idea:\n\n> (</>) :: Path.Dir ar -> Path.Rel fd -> Path ar fd\n\nTogether this enables us to give more meaningful types\nto a lot of the functions,\nand (hopefully) catch a bunch more errors at compile time.\n\nFor more details see the README.md file.\n\nRelated packages:\n\n* @filepath@: The API of Neil Mitchell's \"System.FilePath\" module\n(and properties satisfied) heavily influenced our package.\n\n* @path@: Provides a wrapper type around 'FilePath'\nand maps to functions from @filepath@ package.\nThis warrants consistency with @filepath@ functions.\nRequires Template Haskell.\n\n* @data-filepath@:\nRequires 'Typeable' and Template Haskell.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
          (hsPkgs."QuickCheck" or (buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or (buildDepError "deepseq"))
          (hsPkgs."time" or (buildDepError "time"))
          (hsPkgs."transformers" or (buildDepError "transformers"))
          (hsPkgs."tagged" or (buildDepError "tagged"))
          (hsPkgs."base" or (buildDepError "base"))
          ] ++ (if flags.old-time
          then [
            (hsPkgs."directory" or (buildDepError "directory"))
            (hsPkgs."old-time" or (buildDepError "old-time"))
            ]
          else [ (hsPkgs."directory" or (buildDepError "directory")) ]);
        buildable = true;
        };
      exes = {
        "create-pathtype-test" = {
          depends = (pkgs.lib).optionals (flags.buildtools) [
            (hsPkgs."utility-ht" or (buildDepError "utility-ht"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = if flags.buildtools then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."pathtype" or (buildDepError "pathtype"))
            (hsPkgs."random" or (buildDepError "random"))
            (hsPkgs."base" or (buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }