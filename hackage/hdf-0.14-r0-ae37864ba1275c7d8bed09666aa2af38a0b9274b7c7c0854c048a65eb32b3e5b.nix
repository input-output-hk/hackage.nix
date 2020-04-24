{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hdf"; version = "0.14"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2013";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hdf";
      url = "";
      synopsis = "Haskell data flow library for audio processing";
      description = "Haskell data flow library for audio processing.\nRequires either the @RDL@ UGen from @sc3-rdu@ or\nthe @jack-dl@ host from @rju@.\n\nSee <http://rd.slavepianos.org/?t=sc3-rdu>\nor <http://rd.slavepianos.org/?t=rju>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."fgl" or ((hsPkgs.pkgs-errors).buildDepError "fgl"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          (hsPkgs."hsc3" or ((hsPkgs.pkgs-errors).buildDepError "hsc3"))
          (hsPkgs."murmur-hash" or ((hsPkgs.pkgs-errors).buildDepError "murmur-hash"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."sc3-rdu" or ((hsPkgs.pkgs-errors).buildDepError "sc3-rdu"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      };
    }