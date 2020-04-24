{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hscd"; version = "0.0.1"; };
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
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
            (hsPkgs."HTTP" or ((hsPkgs.pkgs-errors).buildDepError "HTTP"))
            ];
          buildable = true;
          };
        };
      };
    }