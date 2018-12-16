{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      dummyclipboard = false;
    };
    package = {
      specVersion = "2.0";
      identifier = {
        name = "passman-cli";
        version = "0.2.0.0";
      };
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
            (hsPkgs.base)
            (hsPkgs.conduit)
            (hsPkgs.contravariant)
            (hsPkgs.haskeline)
            (hsPkgs.optparse-applicative)
            (hsPkgs.passman-core)
            (hsPkgs.resourcet)
            (hsPkgs.text)
            (hsPkgs.yaml)
          ] ++ pkgs.lib.optional (!flags.dummyclipboard) (hsPkgs.X11);
        };
      };
    };
  }