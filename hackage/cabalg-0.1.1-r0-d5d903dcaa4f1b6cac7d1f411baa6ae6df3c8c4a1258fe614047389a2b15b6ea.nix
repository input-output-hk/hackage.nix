{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "cabalg";
        version = "0.1.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "malikov.d.y@gmail.com";
      author = "Dmitry Malikov";
      homepage = "";
      url = "";
      synopsis = "alias for cabal install from given git repo";
      description = "Short alias for installing cabal package from git source repository.\n\n@\$> cabalg git://github.com/biegunka/biegunka.git --branch=develop@\n\nis just a shorthand for\n\n@\$> create-dir /temp/directory\n\$> git clone --branch develop --single-branch --depth=1 --quiet git://github.com/biegunka/biegunka.git /temp/directory\n\$> change-dir /temp/directory\n\$> cabal install@\n\$> change-dir-back\n\$> remove-dir /temp/directory@\n\nIf current directory has '.cabal-sandbox', 'cabalg' will attach the given repo to it.\nAlso notice, that '--single-branch' flag  comes with 'git-1.7.10' (<https://lkml.org/lkml/2012/3/28/418>) only, so you should have it.\n\nIt seems to be that 'cabalg' is windows-compatible too.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "cabalg" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.optparse-applicative)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }