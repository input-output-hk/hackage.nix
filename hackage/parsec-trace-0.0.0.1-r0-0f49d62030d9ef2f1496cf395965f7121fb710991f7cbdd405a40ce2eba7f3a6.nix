{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "parsec-trace"; version = "0.0.0.1"; };
      license = "MIT";
      copyright = "2015 Gregor Riegler";
      maintainer = "gregor.riegler@gmail.com";
      author = "Gregor Riegler";
      homepage = "http://github.com/sleepomeno/parsec-trace#readme";
      url = "";
      synopsis = "Add a hierarchical trace to Parsec parsers.";
      description = "Manages a tree tracing the hierarchical run of successful parsers in the Parsec user state.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
          (hsPkgs."rosezipper" or ((hsPkgs.pkgs-errors).buildDepError "rosezipper"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }