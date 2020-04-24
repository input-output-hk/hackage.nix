{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "csound-catalog"; version = "0.6.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "https://github.com/anton-k/csound-catalog";
      url = "";
      synopsis = "a gallery of Csound instruments.";
      description = "A gallery of Csound instruments.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."csound-expression" or ((hsPkgs.pkgs-errors).buildDepError "csound-expression"))
          (hsPkgs."csound-sampler" or ((hsPkgs.pkgs-errors).buildDepError "csound-sampler"))
          (hsPkgs."sharc-timbre" or ((hsPkgs.pkgs-errors).buildDepError "sharc-timbre"))
          ];
        buildable = true;
        };
      };
    }