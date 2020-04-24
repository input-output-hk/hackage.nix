{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2.3";
      identifier = { name = "flexiwrap-smallcheck"; version = "0.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Iain Alexander <ia@stryx.demon.co.uk>";
      author = "Iain Alexander <ia@stryx.demon.co.uk>";
      homepage = "";
      url = "";
      synopsis = "SmallCheck (Serial) instances for flexiwrap";
      description = "SmallCheck (Serial) instances for flexiwrap";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-type" or ((hsPkgs.pkgs-errors).buildDepError "data-type"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."flexiwrap" or ((hsPkgs.pkgs-errors).buildDepError "flexiwrap"))
          (hsPkgs."smallcheck" or ((hsPkgs.pkgs-errors).buildDepError "smallcheck"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "6.6.1") (hsPkgs."special-functors" or ((hsPkgs.pkgs-errors).buildDepError "special-functors"));
        buildable = true;
        };
      };
    }