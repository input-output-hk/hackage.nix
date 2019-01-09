{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hscd"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2012 Sebastián Ramírez Magrí";
      maintainer = "Sebastián Ramírez Magrí <sebasmagri@gmail.com>";
      author = "Sebastián Ramírez Magrí";
      homepage = "https://bitbucket.org/sebasmagri/hscd";
      url = "";
      synopsis = "Command line client and library for SoundCloud.com";
      description = "A command line client and library to access SoundCloud.com.\n\nSupports fetching tracks and getting information about tracks,\nusers, sets, groups and SoundCloud apps.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hscd" = {
          depends = [
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.bytestring)
            (hsPkgs.ghc-prim)
            (hsPkgs.HTTP)
            ];
          };
        };
      };
    }