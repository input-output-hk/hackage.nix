{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { split-base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "maccatcher"; version = "2.1.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "oss@solidsnack.be";
      author = "Jason Dusek";
      homepage = "";
      url = "";
      synopsis = "Obtain the host MAC address on *NIX and Windows.";
      description = "Obtain the host MAC address on *NIX and Windows.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          ];
        buildable = true;
        };
      exes = { "maccatcher" = { buildable = true; }; };
      };
    }