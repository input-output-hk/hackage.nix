{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { base4 = true; };
    package = {
      specVersion = "1.8";
      identifier = { name = "launchpad-control"; version = "0.0.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2013 Balazs Komuves";
      maintainer = "bkomuves (plus) hackage (at) gmail (dot) com";
      author = "Balazs Komuves";
      homepage = "http://code.haskell.org/~bkomuves/";
      url = "";
      synopsis = "High and low-level interface to the Novation Launchpad midi controller.";
      description = "High and low-level interface to the Novation Launchpad midi controller.\nAllows to make \"Launchpad apps\" easily, or to access the controller\nin a more low-level way. Some example apps are included.\nPresently only Mac OSX and Windows is supported (because we rely on hmidi).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."hmidi" or ((hsPkgs.pkgs-errors).buildDepError "hmidi"))
          ] ++ [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "launchpad-control-examples" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."launchpad-control" or ((hsPkgs.pkgs-errors).buildDepError "launchpad-control"))
            ];
          buildable = true;
          };
        };
      };
    }