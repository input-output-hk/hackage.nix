{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "cabalg"; version = "0.1.2"; };
      license = "MIT";
      copyright = "";
      maintainer = "malikov.d.y@gmail.com";
      author = "Dmitry Malikov";
      homepage = "";
      url = "";
      synopsis = "alias for cabal install from given git repo";
      description = "Short alias for installing cabal package from git source repository.\n\nI.e.\n\n@\$> cabalg git:\\/\\/github.com\\/biegunka\\/biegunka.git --branch=develop\n@\n\nis just a shorthand for\n\n@\$> create-dir \\/temp\\/directory\n\$> git clone --branch develop --single-branch --depth=1 --quiet git:\\/\\/github.com\\/biegunka\\/biegunka.git \\/temp\\/directory\n\$> change-dir \\/temp\\/directory\n\$> cabal install\n\$> change-dir-back\n\$> remove-dir \\/temp\\/directory@\n\nIf current directory is cabal-sandbox\\'ed, 'cabalg' will attach the given repo to it.\n\nAlso notice, that '--single-branch' flag  comes with git-1.7.10 (<https://lkml.org/lkml/2012/3/28/418>) and later, so you probably want to have it.\n\nHope it is windows-compatible.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "cabalg" = {
          depends = [
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