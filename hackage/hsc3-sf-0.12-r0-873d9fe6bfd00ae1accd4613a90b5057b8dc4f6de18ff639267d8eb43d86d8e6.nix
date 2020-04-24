{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hsc3-sf"; version = "0.12"; };
      license = "LicenseRef-GPL";
      copyright = "(c) Rohan Drape, 2006-2012";
      maintainer = "rd@slavepianos.org";
      author = "Rohan Drape";
      homepage = "http://rd.slavepianos.org/?t=hsc3-sf";
      url = "";
      synopsis = "Haskell SuperCollider SoundFile";
      description = "Trivial @NeXT@ sound file input and output.\nThe main module is \"Sound.File.NeXT\".\nFor almost all use cases please see Stefan\nKersten's @hsndfile@ package,\n<http://hackage.haskell.org/package/hsndfile>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hosc" or ((hsPkgs.pkgs-errors).buildDepError "hosc"))
          ];
        buildable = true;
        };
      };
    }