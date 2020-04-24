{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hub"; version = "0.0"; };
      license = "BSD-3-Clause";
      copyright = "Chris Dornan, 2011";
      maintainer = "Chris Dornan <chris@chrisdornan.com>";
      author = "Chris Dornan <chris@chrisdornan.com>";
      homepage = "https://github.com/cdornan/hub";
      url = "";
      synopsis = "A utility for multiplexing multiple GHC installations";
      description = "This package provides a utility for multiplexing multiple\nGHC and Haskell Platform installations, the installation\nbeing selected by configuraton file or environment\nvariable.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "hub" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hexpat" or ((hsPkgs.pkgs-errors).buildDepError "hexpat"))
            (hsPkgs."regex-compat" or ((hsPkgs.pkgs-errors).buildDepError "regex-compat"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."unix" or ((hsPkgs.pkgs-errors).buildDepError "unix"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
            ];
          buildable = true;
          };
        };
      };
    }