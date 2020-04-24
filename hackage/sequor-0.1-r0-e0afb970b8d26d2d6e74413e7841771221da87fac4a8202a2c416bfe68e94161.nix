{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "sequor"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "gchrupala@lsv.uni-saarland.de";
      author = "Grzegorz Chrupała";
      homepage = "http://code.google.com/p/sequor/";
      url = "";
      synopsis = "A sequence labeler based on Collins's sequence perceptron.";
      description = "A sequence labeler based on Collins's sequence perceptron.";
      buildType = "Simple";
      };
    components = {
      exes = {
        "sequor" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            ];
          buildable = true;
          };
        };
      };
    }