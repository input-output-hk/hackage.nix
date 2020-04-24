{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "optparse-helper"; version = "0.2.1.0"; };
      license = "BSD-3-Clause";
      copyright = "Copyright (c) 2016, Peter Harpending";
      maintainer = "peter@harpending.org";
      author = "Peter Harpending";
      homepage = "https://github.com/pharpend/optparse-helper";
      url = "";
      synopsis = "Helper functions for optparse-applicative.";
      description = "The optparse-applicative package, as well as optparse-simple, has some\nundesirable behavior by default, and is quite verbose. This package exists to\nwork around those two.\n\nFor instance:\n\n* optparse-applicative does not show help on error by default.\n\n* optparse-applicative does not disambiguate commands. So, if you have a\ncommand @my-executable foobar@, but your user runs @my-executable f@,\noptparse-applicative will not disambiguate this by default.\n\nFor more specific documentation, see the module documentation for\n\"Options.Applicative.Helper\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
          ];
        buildable = true;
        };
      };
    }