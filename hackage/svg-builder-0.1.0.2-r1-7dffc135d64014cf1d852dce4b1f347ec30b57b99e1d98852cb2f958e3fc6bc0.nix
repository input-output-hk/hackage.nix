{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "svg-builder"; version = "0.1.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2016 Jeffrey Rosenbluth";
      maintainer = "jeffrey.rosenbluth@gmail.com";
      author = "Jeffrey Rosenbluth";
      homepage = "http://github.com/jeffreyrosenbluth/svg-builder.git";
      url = "";
      synopsis = "DSL for building SVG.";
      description = "Fast, easy to write SVG.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }