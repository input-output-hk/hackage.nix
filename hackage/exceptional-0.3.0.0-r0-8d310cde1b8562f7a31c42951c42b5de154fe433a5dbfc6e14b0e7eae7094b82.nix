{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "exceptional"; version = "0.3.0.0"; };
      license = "BSD-2-Clause";
      copyright = "Copyright (c) 2015, Peter Harpending.";
      maintainer = "peter@harpending.org";
      author = "Peter Harpending";
      homepage = "https://github.com/";
      url = "";
      synopsis = "Essentially the Maybe type with error messages.";
      description = "This is a very simple type:\n\n> data Exceptional x\n>   = Failure String\n>   | Success x\n\nIt's much like @Maybe@, except instead of @Nothing@, we have @Failure\nString@.\n\nA comparison could also be made to @Either String@. I made this library\nbecause I was dissatisfied with the @Monad@ instance for @Either@. In this\ntype, @fail = Failure@. It's rather simple.\n\nChanges\n\n[0.3.0.0] Fix erroneous behavior in @foldExceptional@ function added in\nversion 0.2. This release actually does break (or rather fix) the\n@foldExceptional@ function, so be careful.\n\n[0.2.0.0] Add @exceptional@ function to encapsulate ordinary exceptions in the\n@Exceptional@ monad. Add folding functions.\n\nThis release does not actually break the API, however I was rather\ntired when I chose the version number. This should be 0.1.6.\n\n[0.1.5.0] Add @exceptIO@ function to encapsulate IO errors in the\n@Exceptional@ monad.\n\n[0.1.4.3] Fix bug where @exceptional@ won't compile on @base < 4.8@.\nAlso move the changelog back to the description so it's more\nvisible.\n\n[0.1.4.2] Moved change log to a separate file so Hackage displays\nit correctly.\n\n[0.1.4.1] Documentation enhancements/fixes.\n\n[0.1.4.0] Added @fromMaybe@ and @toMaybe@ functions, and a link to\nthe bug tracker.\n\n[0.1.3.0] Fixed a typo. 0.1.2.0 won't build. Also added definition\nof @empty@ for @Alternative@.\n\n[0.1.2.0] Added @fromEither@ and @toEither@ functions.\n\n[0.1.1.3] Hackage is terrible. Yet another formatting fix.\n\n[0.1.1.2] Yet another formatting fix.\n\n[0.1.1.1] Formatting fix to the haddock documentation.\n\n[0.1.1.0] Add @runExceptional@ function.\n\n[0.1.0.1] Minor documentation changes. No changes to the API.\n\n[0.1.0.0] Initial version";
      buildType = "Simple";
      };
    components = {
      "library" = { depends = [ (hsPkgs.base) (hsPkgs.exceptions) ]; };
      };
    }