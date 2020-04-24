{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "SWMMoutGetMB"; version = "0.1.1.1"; };
      license = "LGPL-3.0-only";
      copyright = "";
      maintainer = "siddhanathan@gmail.com";
      author = "Siddhanathan Shanmugam";
      homepage = "https://github.com/siddhanathan/SWMMoutGetMB";
      url = "";
      synopsis = "A parser for SWMM 5 binary .OUT files";
      description = "The United States Environmental Protection Agency (EPA) Storm Water\nManagement Model (SWMM) is a dynamic hydrology-hydraulic water\nquality simulation model for single event or long-term (continuous)\nsimulation of runoff quantity and quality from primarily urban areas.\nSWMM 5, which is currently the newest version of SWMM, produces a\nbinary .OUT file as its output.  SWMMoutGetMB is a SWMM binary\nreader using the Get monad in Haskell to retrieve contents of this\nbinary file and save it into a SWMMObject, which can then be\nused in Haskell programs.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."data-binary-ieee754" or ((hsPkgs.pkgs-errors).buildDepError "data-binary-ieee754"))
          (hsPkgs."pipes-binary" or ((hsPkgs.pkgs-errors).buildDepError "pipes-binary"))
          (hsPkgs."pipes-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "pipes-bytestring"))
          (hsPkgs."pipes-parse" or ((hsPkgs.pkgs-errors).buildDepError "pipes-parse"))
          (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
          ];
        buildable = true;
        };
      };
    }