{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "json-python"; version = "0.4.0.0"; };
      license = "MIT";
      copyright = "";
      maintainer = "russell.s.stewart@gmail.com";
      author = "Russell Stewart";
      homepage = "http://stewart.guru";
      url = "";
      synopsis = "Call python inline from haskell";
      description = "WARNING: Project in alpha. Call python from haskell with ease.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pureMD5" or ((hsPkgs.pkgs-errors).buildDepError "pureMD5"))
          ];
        pkgconfig = [
          (pkgconfPkgs."python" or ((hsPkgs.pkgs-errors).pkgConfDepError "python"))
          ];
        buildable = true;
        };
      };
    }