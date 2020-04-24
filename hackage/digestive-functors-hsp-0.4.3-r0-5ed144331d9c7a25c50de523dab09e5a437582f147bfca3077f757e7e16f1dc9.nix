{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "digestive-functors-hsp"; version = "0.4.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jeremy@n-heptane.com";
      author = "Jeremy Shaw";
      homepage = "http://src.seereason.com/digestive-functors-hsp";
      url = "";
      synopsis = "HSP support for digestive-functors";
      description = "This is an HSP frontend for the digestive-functors library.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."digestive-functors" or ((hsPkgs.pkgs-errors).buildDepError "digestive-functors"))
          (hsPkgs."hsp" or ((hsPkgs.pkgs-errors).buildDepError "hsp"))
          (hsPkgs."hsx" or ((hsPkgs.pkgs-errors).buildDepError "hsx"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        build-tools = (pkgs.lib).optional (!system.isWindows) (hsPkgs.buildPackages.trhsx or (pkgs.buildPackages.trhsx or ((hsPkgs.pkgs-errors).buildToolDepError "trhsx")));
        buildable = true;
        };
      };
    }