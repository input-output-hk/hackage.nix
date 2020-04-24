{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "codepad"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "2010 Chris Done";
      maintainer = "Chris King <G.nius.ck@gmail.com>";
      author = "Chris Done";
      homepage = "http://github.com/chrisdone/codepad";
      url = "";
      synopsis = "Submit and retrieve paste output from CodePad.org.";
      description = "Submit and retrieve paste output from http://codepad.org/";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."network" or ((hsPkgs.pkgs-errors).buildDepError "network"))
          (hsPkgs."curl" or ((hsPkgs.pkgs-errors).buildDepError "curl"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }