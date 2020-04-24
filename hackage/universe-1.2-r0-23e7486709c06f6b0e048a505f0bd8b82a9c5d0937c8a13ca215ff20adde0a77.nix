{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "universe"; version = "1.2"; };
      license = "BSD-3-Clause";
      copyright = "Daniel Wagner 2014";
      maintainer = "me@dmwit.com";
      author = "Daniel Wagner";
      homepage = "https://github.com/dmwit/universe";
      url = "";
      synopsis = "A class for finite and recursively enumerable types.";
      description = "A class for finite and recursively enumerable types and some helper functions for enumerating them\n\n@\nclass Universe a where universe :: [a]\nclass Universe a => Finite a where universeF :: [a]; universeF = universe\n@\n\nThis also provides instances from @universe-instances-*\" packages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."universe-base" or ((hsPkgs.pkgs-errors).buildDepError "universe-base"))
          (hsPkgs."universe-instances-extended" or ((hsPkgs.pkgs-errors).buildDepError "universe-instances-extended"))
          (hsPkgs."universe-reverse-instances" or ((hsPkgs.pkgs-errors).buildDepError "universe-reverse-instances"))
          (hsPkgs."universe-some" or ((hsPkgs.pkgs-errors).buildDepError "universe-some"))
          ];
        buildable = true;
        };
      };
    }