{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "webcrank-dispatch"; version = "0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2015 Richard Wallace";
      maintainer = "Richard Wallace <rwallace@thewallacepack.net>";
      author = "Richard Wallace <rwallace@thewallacepack.net>";
      homepage = "https://github.com/webcrank/webcrank-dispatch.hs";
      url = "";
      synopsis = "A simple request dispatcher.";
      description = "A simple request dispatcher.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."path-pieces" or ((hsPkgs.pkgs-errors).buildDepError "path-pieces"))
          (hsPkgs."hvect" or ((hsPkgs.pkgs-errors).buildDepError "hvect"))
          (hsPkgs."reroute" or ((hsPkgs.pkgs-errors).buildDepError "reroute"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }