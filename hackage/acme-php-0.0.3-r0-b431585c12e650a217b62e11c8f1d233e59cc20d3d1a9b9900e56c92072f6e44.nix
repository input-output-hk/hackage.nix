{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "acme-php"; version = "0.0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "headprogrammingczar@gmail.com";
      author = "JoeQuinn";
      homepage = "";
      url = "";
      synopsis = "The flexibility of Haskell and the safety of PHP";
      description = "At last, a module that combines the dynamic flexibility of Haskell with the strong design principles of PHP!";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }