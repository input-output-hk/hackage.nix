{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "iothread"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "t.t.mc1192.sf@gmail.com";
      author = "tattsun";
      homepage = "https://github.com/tattsun/iothread";
      url = "";
      synopsis = "run IOs in a single thread";
      description = "run IOs in a single thread";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }