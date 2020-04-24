{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "java-poker"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "toby.net.info+git@gmail.com";
      author = "tobynet";
      homepage = "https://github.com/tobynet/java-poker#readme";
      url = "";
      synopsis = "The etude of the Haskell programming";
      description = "poker like a JAVA";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."random-shuffle" or ((hsPkgs.pkgs-errors).buildDepError "random-shuffle"))
          ];
        buildable = true;
        };
      exes = {
        "java-poker" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."java-poker" or ((hsPkgs.pkgs-errors).buildDepError "java-poker"))
            ];
          buildable = true;
          };
        };
      };
    }