{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {
      library-only = false;
    };
    package = {
      specVersion = "1.10";
      identifier = {
        name = "private-hackage-uploader";
        version = "0.2.3.0";
      };
      license = "MIT";
      copyright = "";
      maintainer = "alfredo.dinapoli@gmail.com";
      author = "Alfredo Di Napoli";
      homepage = "";
      url = "";
      synopsis = "Upload a package to the public or private hackage, building its docs";
      description = "An opinionated utility that uploads a package to a private or public hackage, building its docs";
      buildType = "Simple";
    };
    components = {
      "private-hackage-uploader" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.directory)
          (hsPkgs.optparse-applicative)
          (hsPkgs.shelly)
          (hsPkgs.text)
        ];
      };
      exes = {
        "private-hackage-uploader" = {
          depends  = pkgs.lib.optionals (!flags.library-only) [
            (hsPkgs.base)
            (hsPkgs.text)
            (hsPkgs.shelly)
            (hsPkgs.directory)
            (hsPkgs.private-hackage-uploader)
          ];
        };
      };
    };
  }