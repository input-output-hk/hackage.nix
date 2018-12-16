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
        name = "hoobuddy";
        version = "0.1.0.1";
      };
      license = "MIT";
      copyright = "";
      maintainer = "tobias.pflug@gmail.com";
      author = "tobias pflug";
      homepage = "http://github.com/gilligan/hoobuddy";
      url = "";
      synopsis = "Simple tool for fetching and merging hoogle data";
      description = "Hoobuddy parses the specified cabal project file and invokes hoogle to fetch databases for\nall specified dependencies merging the result into a `default.hoo` file in the current directory.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hoobuddy" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.monad-loops)
            (hsPkgs.aeson)
            (hsPkgs.yaml)
            (hsPkgs.hoogle)
            (hsPkgs.process)
            (hsPkgs.bytestring)
            (hsPkgs.mtl)
          ];
        };
      };
    };
  }