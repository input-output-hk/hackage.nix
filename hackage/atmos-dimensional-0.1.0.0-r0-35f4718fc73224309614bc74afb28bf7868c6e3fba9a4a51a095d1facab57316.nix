{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "atmos-dimensional"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gregmainland@gmail.com";
      author = "Greg Horn";
      homepage = "";
      url = "";
      synopsis = "dimensional wrapper on atmos package";
      description = "1976 US Standard Atmosphere with dimensions from dimensional package.\n\nThis is a thin wrapper on top of the atmos package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."atmos" or ((hsPkgs.pkgs-errors).buildDepError "atmos"))
          (hsPkgs."dimensional" or ((hsPkgs.pkgs-errors).buildDepError "dimensional"))
          (hsPkgs."numtype" or ((hsPkgs.pkgs-errors).buildDepError "numtype"))
          ];
        buildable = true;
        };
      };
    }