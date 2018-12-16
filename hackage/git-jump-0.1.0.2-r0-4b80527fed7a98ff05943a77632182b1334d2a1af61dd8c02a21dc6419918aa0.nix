{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "git-jump";
        version = "0.1.0.2";
      };
      license = "BSD-3-Clause";
      copyright = "Eyal Lotem";
      maintainer = "eyal.lotem@gmail.com";
      author = "Eyal Lotem";
      homepage = "https://github.com/Peaker/git-jump";
      url = "";
      synopsis = "Move a git branch";
      description = "Move a git branch to a specified refspec (or to the upstream position)\nAlong with any uncommited changes.\nForegoing any committed changes.  Meant to be a\nsafer replacement for `reset --hard` to jump\nbranch tips.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "git-jump" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.process)
            (hsPkgs.base-compat)
          ];
        };
      };
    };
  }