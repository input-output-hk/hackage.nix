{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "skeleton"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "(C) Michele Guerini Rocco";
      maintainer = "micheleguerinirocco@me.com";
      author = "rnhmjoj";
      homepage = "";
      url = "";
      synopsis = "a tool to access the OSX keychain";
      description = "skeleton is a command line tool used to quickly access passwords\nstored in the OSX keychain. You can search by account, server\nname or any other available attribute and get a list of fuzzy\nmatched result. The first match is be copied to the clipbdoard.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "skeleton" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.attoparsec)
            (hsPkgs.bytestring)
            (hsPkgs.hex)
            (hsPkgs.time)
            (hsPkgs.argparser)
            (hsPkgs.posix-escape)
            ];
          };
        };
      };
    }