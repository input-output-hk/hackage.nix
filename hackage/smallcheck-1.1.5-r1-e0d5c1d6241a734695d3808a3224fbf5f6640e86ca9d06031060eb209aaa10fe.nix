{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "smallcheck"; version = "1.1.5"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "M Farkas-Dyck <strake888@gmail.com>";
      author = "Colin Runciman, Roman Cheplyaka";
      homepage = "https://github.com/strake/smallcheck.hs";
      url = "";
      synopsis = "A property-based testing library";
      description = "SmallCheck is a testing library that allows to verify properties\nfor all test cases up to some depth. The test cases are generated\nautomatically by SmallCheck.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."logict" or ((hsPkgs.pkgs-errors).buildDepError "logict"))
          (hsPkgs."ghc-prim" or ((hsPkgs.pkgs-errors).buildDepError "ghc-prim"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          ] ++ (pkgs.lib).optional (compiler.isGhc && (compiler.version).lt "7.10") (hsPkgs."nats" or ((hsPkgs.pkgs-errors).buildDepError "nats"));
        buildable = true;
        };
      };
    }