{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "riot"; version = "1.20080618"; };
      license = "LicenseRef-GPL";
      copyright = "";
      maintainer = "Tuomo Valkonen";
      author = "Tuomo Valkonen";
      homepage = "http://modeemi.fi/~tuomov/riot/";
      url = "";
      synopsis = "Riot is an Information Organisation Tool";
      description = "Riot is a tool for keeping (textual) information organised. Some people\ncall such programs 'outliners'. It is a todo list and note manager, and\na manager for whatever information one might collect, that I wrote\nbecause I couldn't find a single one that was at all close to what I\nwanted. Riot has an interface resembling those of slrn and mutt and all\ntext editing is done with an external editor: Riot is simply a\nnice-to-use browser for collections of text.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "riot" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.unix)
            (hsPkgs.directory)
            (hsPkgs.haskell98)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.packedstring)
            (hsPkgs.containers)
            (hsPkgs.old-locale)
            ];
          libs = [ (pkgs."ncursesw") ];
          };
        };
      };
    }