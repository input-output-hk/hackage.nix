{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "hedis-envy"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "2020 IIJ Innovation Institute, Inc.";
      maintainer = "yuji-yamamoto@iij.ad.jp";
      author = "IIJ Innovation Institute, Inc.";
      homepage = "https://github.com/igrep/hedis-envy#readme";
      url = "";
      synopsis = "";
      description = "Provides FromEnv instance for ConnectInfo of hedis";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
          (hsPkgs."envy" or ((hsPkgs.pkgs-errors).buildDepError "envy"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          ];
        buildable = true;
        };
      };
    }