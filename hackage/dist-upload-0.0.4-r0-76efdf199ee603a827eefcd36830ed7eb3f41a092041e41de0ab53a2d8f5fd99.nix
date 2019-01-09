{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "dist-upload"; version = "0.0.4"; };
      license = "GPL-3.0-only";
      copyright = "(c) 2010 Andy Stewart";
      maintainer = "Andy Stewart <lazycat.manatee@gmail.com>";
      author = "Andy Stewart";
      homepage = "";
      url = "";
      synopsis = "Generate/Upload cabal package to Hackage.";
      description = "\"dist-upload\" scan .cabal file under current directory to get packageName\\/packageVersion (foo.x.y.z), and use command:\n\n> cabal sdist && cabal upload ./dist/foo.x.y.z.tar.gz\n\nupload package to hackage, best use command \"dist-upload\" in script to upload package batch.\n\nIf you have add hackage username\\/password in file `HOME/.cabal/config`, then \"dist-upload\" can upload package fully automatic. :)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.process)
          (hsPkgs.filepath)
          (hsPkgs.directory)
          (hsPkgs.Cabal)
          ];
        };
      exes = { "dist-upload" = {}; };
      };
    }