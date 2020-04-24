{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "hoopl"; version = "3.7.12.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "nr@cs.tufts.edu";
      author = "Norman Ramsey, João Dias, and Simon Peyton Jones";
      homepage = "http://ghc.cs.tufts.edu/hoopl/";
      url = "";
      synopsis = "A library to support dataflow analysis and optimization";
      description = "Higher-order optimization library";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }