{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hsc3-sf-hsndfile"; version = "0.8"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2010";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://slavepianos.org/rd/?t=hsc3-sf-hsndfile";
      url = "";
      synopsis = "Haskell SuperCollider SoundFile";
      description = "Provide hsc3-sf interface to Stefan\nKersten's hsndfile package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hsc3-sf" or ((hsPkgs.pkgs-errors).buildDepError "hsc3-sf"))
          (hsPkgs."hsndfile" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile"))
          (hsPkgs."hsndfile-vector" or ((hsPkgs.pkgs-errors).buildDepError "hsndfile-vector"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      };
    }