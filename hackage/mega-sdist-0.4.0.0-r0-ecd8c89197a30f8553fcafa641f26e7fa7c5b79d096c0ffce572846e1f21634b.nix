{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "mega-sdist"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "michael@snoyman.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/snoyberg/mega-sdist#readme";
      url = "";
      synopsis = "Handles uploading to Hackage from mega repos";
      description = "Please see the description on Github at <https://github.com/snoyberg/mega-sdist#readme>";
      buildType = "Simple";
      };
    components = {
      exes = {
        "mega-sdist" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.optparse-simple)
            (hsPkgs.pantry-tmp)
            (hsPkgs.path)
            (hsPkgs.path-io)
            (hsPkgs.rio)
            (hsPkgs.rio-orphans)
            (hsPkgs.yaml)
            ];
          };
        };
      };
    }