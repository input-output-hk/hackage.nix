{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "yaop"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "smolanka.zhacka@gmail.com";
      author = "Eugene Smolanka";
      homepage = "";
      url = "";
      synopsis = "Yet another option parser";
      description = "A wrapper over the standard System.Console.GetOpt to make option description more convenient.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."template-haskell" or ((hsPkgs.pkgs-errors).buildDepError "template-haskell"))
          (hsPkgs."haskell98" or ((hsPkgs.pkgs-errors).buildDepError "haskell98"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          ];
        buildable = true;
        };
      };
    }