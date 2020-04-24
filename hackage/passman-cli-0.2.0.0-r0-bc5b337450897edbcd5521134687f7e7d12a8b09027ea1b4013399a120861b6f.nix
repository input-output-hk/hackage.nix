{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { dummyclipboard = false; };
    package = {
      specVersion = "2.0";
      identifier = { name = "passman-cli"; version = "0.2.0.0"; };
      license = "GPL-3.0-only";
      copyright = "2017 Matthew Harm Bekkema";
      maintainer = "mbekkema97@gmail.com";
      author = "Matthew Harm Bekkema";
      homepage = "https://github.com/PasswordManager/passman-cli#readme";
      url = "";
      synopsis = "Deterministic password generator command line interface";
      description = "Generates unique passwords deterministically from a single master password.\nA hash of the master password is stored on disk to prevent accidentally\ngenerating a password from a mistyped master password.\n\nThis is the command line interface to passman.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "passman-cli" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
            (hsPkgs."haskeline" or ((hsPkgs.pkgs-errors).buildDepError "haskeline"))
            (hsPkgs."optparse-applicative" or ((hsPkgs.pkgs-errors).buildDepError "optparse-applicative"))
            (hsPkgs."passman-core" or ((hsPkgs.pkgs-errors).buildDepError "passman-core"))
            (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
            ] ++ (pkgs.lib).optional (!flags.dummyclipboard) (hsPkgs."X11" or ((hsPkgs.pkgs-errors).buildDepError "X11"));
          buildable = true;
          };
        };
      };
    }