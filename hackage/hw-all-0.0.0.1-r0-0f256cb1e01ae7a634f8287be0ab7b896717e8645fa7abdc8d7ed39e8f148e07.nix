{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.4";
      identifier = { name = "hw-all"; version = "0.0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2016-2019 John Ky";
      maintainer = "newhoggy@gmail.com";
      author = "John Ky";
      homepage = "http://github.com/haskell-works/hw-all#readme";
      url = "";
      synopsis = "Demo library";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bits-extra" or ((hsPkgs.pkgs-errors).buildDepError "bits-extra"))
          (hsPkgs."hw-aeson" or ((hsPkgs.pkgs-errors).buildDepError "hw-aeson"))
          (hsPkgs."hw-balancedparens" or ((hsPkgs.pkgs-errors).buildDepError "hw-balancedparens"))
          (hsPkgs."hw-bits" or ((hsPkgs.pkgs-errors).buildDepError "hw-bits"))
          (hsPkgs."hw-conduit" or ((hsPkgs.pkgs-errors).buildDepError "hw-conduit"))
          (hsPkgs."hw-diagnostics" or ((hsPkgs.pkgs-errors).buildDepError "hw-diagnostics"))
          (hsPkgs."hw-dsv" or ((hsPkgs.pkgs-errors).buildDepError "hw-dsv"))
          (hsPkgs."hw-dump" or ((hsPkgs.pkgs-errors).buildDepError "hw-dump"))
          (hsPkgs."hw-eliasfano" or ((hsPkgs.pkgs-errors).buildDepError "hw-eliasfano"))
          (hsPkgs."hw-excess" or ((hsPkgs.pkgs-errors).buildDepError "hw-excess"))
          (hsPkgs."hw-fingertree" or ((hsPkgs.pkgs-errors).buildDepError "hw-fingertree"))
          (hsPkgs."hw-fingertree-strict" or ((hsPkgs.pkgs-errors).buildDepError "hw-fingertree-strict"))
          (hsPkgs."hw-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hedgehog"))
          (hsPkgs."hw-hspec-hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hw-hspec-hedgehog"))
          (hsPkgs."hw-int" or ((hsPkgs.pkgs-errors).buildDepError "hw-int"))
          (hsPkgs."hw-ip" or ((hsPkgs.pkgs-errors).buildDepError "hw-ip"))
          (hsPkgs."hw-json" or ((hsPkgs.pkgs-errors).buildDepError "hw-json"))
          (hsPkgs."hw-json-lens" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-lens"))
          (hsPkgs."hw-json-simd" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-simd"))
          (hsPkgs."hw-json-simple-cursor" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-simple-cursor"))
          (hsPkgs."hw-json-standard-cursor" or ((hsPkgs.pkgs-errors).buildDepError "hw-json-standard-cursor"))
          (hsPkgs."hw-mquery" or ((hsPkgs.pkgs-errors).buildDepError "hw-mquery"))
          (hsPkgs."hw-packed-vector" or ((hsPkgs.pkgs-errors).buildDepError "hw-packed-vector"))
          (hsPkgs."hw-parser" or ((hsPkgs.pkgs-errors).buildDepError "hw-parser"))
          (hsPkgs."hw-prim" or ((hsPkgs.pkgs-errors).buildDepError "hw-prim"))
          (hsPkgs."hw-rankselect" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect"))
          (hsPkgs."hw-rankselect-base" or ((hsPkgs.pkgs-errors).buildDepError "hw-rankselect-base"))
          (hsPkgs."hw-simd" or ((hsPkgs.pkgs-errors).buildDepError "hw-simd"))
          (hsPkgs."hw-streams" or ((hsPkgs.pkgs-errors).buildDepError "hw-streams"))
          (hsPkgs."hw-string-parse" or ((hsPkgs.pkgs-errors).buildDepError "hw-string-parse"))
          (hsPkgs."hw-succinct" or ((hsPkgs.pkgs-errors).buildDepError "hw-succinct"))
          (hsPkgs."hw-uri" or ((hsPkgs.pkgs-errors).buildDepError "hw-uri"))
          (hsPkgs."hw-xml" or ((hsPkgs.pkgs-errors).buildDepError "hw-xml"))
          ];
        buildable = true;
        };
      };
    }