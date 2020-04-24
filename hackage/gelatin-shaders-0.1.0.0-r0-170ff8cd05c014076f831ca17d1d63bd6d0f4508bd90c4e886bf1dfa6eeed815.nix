{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "gelatin-shaders"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "Schell Scivally";
      maintainer = "schell@zyghost.com";
      author = "Schell Scivally";
      homepage = "https://github.com/schell/gelatin-shaders#readme";
      url = "";
      synopsis = "Gelatin's OpenGL shaders.";
      description = "Gelatin's OpenGL shaders. Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."gelatin" or ((hsPkgs.pkgs-errors).buildDepError "gelatin"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          ];
        buildable = true;
        };
      };
    }