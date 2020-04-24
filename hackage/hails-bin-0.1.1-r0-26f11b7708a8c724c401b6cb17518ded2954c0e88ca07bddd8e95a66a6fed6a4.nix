{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "hails-bin"; version = "0.1.1"; };
      license = "GPL-2.0-only";
      copyright = "";
      maintainer = "Amit Levy <levya at cs.stanford dot edu>, Deian Stefan  <deian at cs dot stanford dot edu>";
      author = "HAILS team";
      homepage = "";
      url = "";
      synopsis = "Dynamic launcher of Hails applications";
      description = "Executable for deploying Hails (see the hails Hackage package)\napplications.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hails" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hails" or ((hsPkgs.pkgs-errors).buildDepError "hails"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."ghc-paths" or ((hsPkgs.pkgs-errors).buildDepError "ghc-paths"))
            (hsPkgs."iterIO" or ((hsPkgs.pkgs-errors).buildDepError "iterIO"))
            (hsPkgs."iterio-server" or ((hsPkgs.pkgs-errors).buildDepError "iterio-server"))
            (hsPkgs."mongoDB" or ((hsPkgs.pkgs-errors).buildDepError "mongoDB"))
            (hsPkgs."bson" or ((hsPkgs.pkgs-errors).buildDepError "bson"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            ];
          buildable = true;
          };
        };
      };
    }