{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "relevant-time"; version = "0.1.1.0"; };
      license = "BSD-3-Clause";
      copyright = "copyright (c) Layer 3 Communications, Daniel Cartwright";
      maintainer = "dcartwright@layer3com.com";
      author = "Daniel Cartwright";
      homepage = "https://github.com/chessai/relevant-time.git";
      url = "";
      synopsis = "humanised relevant time";
      description = "Humans tend to think of time relative to a fixed point.\nThis library offers a simple datatype, 'RelevantTime',\nwhich captures the logic behind that idea.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."chronos" or ((hsPkgs.pkgs-errors).buildDepError "chronos"))
          (hsPkgs."torsor" or ((hsPkgs.pkgs-errors).buildDepError "torsor"))
          ];
        buildable = true;
        };
      };
    }