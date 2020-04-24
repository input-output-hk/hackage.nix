{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { old-time = true; buildtools = false; };
    package = {
      specVersion = "1.8";
      identifier = { name = "pathtype"; version = "0.8.1"; };
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
          (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
          (hsPkgs."QuickCheck" or ((hsPkgs.pkgs-errors).buildDepError "QuickCheck"))
          (hsPkgs."deepseq" or ((hsPkgs.pkgs-errors).buildDepError "deepseq"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."tagged" or ((hsPkgs.pkgs-errors).buildDepError "tagged"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ] ++ (if flags.old-time
          then [
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."old-time" or ((hsPkgs.pkgs-errors).buildDepError "old-time"))
            ]
          else [
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ]);
        buildable = true;
        };
      exes = {
        "create-pathtype-test" = {
          depends = (pkgs.lib).optionals (flags.buildtools) [
            (hsPkgs."utility-ht" or ((hsPkgs.pkgs-errors).buildDepError "utility-ht"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = if flags.buildtools then true else false;
          };
        };
      tests = {
        "test" = {
          depends = [
            (hsPkgs."pathtype" or ((hsPkgs.pkgs-errors).buildDepError "pathtype"))
            (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }