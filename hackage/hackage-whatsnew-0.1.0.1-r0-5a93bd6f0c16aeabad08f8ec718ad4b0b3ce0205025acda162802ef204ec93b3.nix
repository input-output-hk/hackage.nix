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
        name = "hackage-whatsnew";
        version = "0.1.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "https://github.com/stepcut/hackage-whatsnew";
      url = "";
      synopsis = "Check for differences between working directory and hackage";
      description = "This tool checks to see if the package in a local working directory\nhas changes which are not yet on hackage. This is useful to check if\nyou have forgetton to upload your changes to hackage.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "hackage-whatsnew" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.Cabal)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hackage-db)
            (hsPkgs.process)
            (hsPkgs.temporary)
          ];
        };
      };
    };
  }