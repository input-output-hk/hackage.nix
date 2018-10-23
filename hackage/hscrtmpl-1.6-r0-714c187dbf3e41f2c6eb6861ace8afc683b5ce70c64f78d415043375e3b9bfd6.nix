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
        name = "hscrtmpl";
        version = "1.6";
      };
      license = "ISC";
      copyright = "2018 Dino Morelli";
      maintainer = "dino@ui3.info";
      author = "Dino Morelli";
      homepage = "https://github.com/dino-/hscrtmpl#readme";
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
            (hsPkgs.filepath)
            (hsPkgs.process)
            (hsPkgs.time)
          ];
        };
      };
    };
  }