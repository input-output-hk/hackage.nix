{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = {
        name = "hscrtmpl";
        version = "1.2";
      };
      license = "BSD-3-Clause";
      copyright = "2013-2014 Dino Morelli";
      maintainer = "Dino Morelli <dino@ui3.info>";
      author = "Dino Morelli";
      homepage = "http://ui3.info/darcs/hscrtmpl/";
      url = "";
      synopsis = "Haskell shell script template";
      description = "A template for writing shell scripts in Haskell. Contains some useful functions and examples of things commonly done in bash.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hscrtmpl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.directory)
            (hsPkgs.old-locale)
            (hsPkgs.process)
            (hsPkgs.time)
          ];
        };
      };
    };
  }