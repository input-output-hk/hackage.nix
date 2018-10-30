{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {
      warn-as-error = false;
    };
    package = {
      specVersion = "1.16";
      identifier = {
        name = "hpg";
        version = "0.6";
      };
      license = "ISC";
      copyright = "";
      maintainer = "fritjof@alokat.org";
      author = "Fritjof Bornebusch";
      homepage = "https://darcs.alokat.org/hpg";
      url = "";
      synopsis = "a simple password generator";
      description = "hpg is a free, open source password generator. It's design\nis pretty simple and it generates random passwords between\n1 and 2^16 characters.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hpg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.random)
          ] ++ pkgs.lib.optional (system.isOpenbsd) (hsPkgs.unix);
        };
      };
    };
  }