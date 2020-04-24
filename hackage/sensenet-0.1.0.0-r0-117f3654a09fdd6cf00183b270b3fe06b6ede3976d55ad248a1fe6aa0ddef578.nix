{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "sensenet"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "rossdylan@csh.rit.edu";
      author = "Ross Delinger";
      homepage = "https://github.com/rossdylan/sensenet";
      url = "";
      synopsis = "Distributed sensor network for the raspberry pi";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sensenet" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."zeromq3-haskell" or ((hsPkgs.pkgs-errors).buildDepError "zeromq3-haskell"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            ];
          buildable = true;
          };
        };
      };
    }