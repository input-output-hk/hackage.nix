{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "getemx";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "wolfson@gmail.com";
      author = "Ben Wolfson";
      homepage = "http://bitbucket.org/kenko/getemx";
      url = "";
      synopsis = "Fetch from emusic using .emx files";
      description = "Read emusic's .emx files and download media";
      buildType = "Simple";
    };
    components = {
      exes = {
        "getemx" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.curl)
            (hsPkgs.hxt)
            (hsPkgs.mtl)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.process)
            (hsPkgs.old-locale)
            (hsPkgs.time)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }