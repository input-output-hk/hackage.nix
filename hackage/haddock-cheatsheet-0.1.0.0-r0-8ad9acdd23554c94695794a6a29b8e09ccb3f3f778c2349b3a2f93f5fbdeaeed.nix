{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "haddock-cheatsheet"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "2019 Sodality Labs";
      maintainer = "daig@sodality.cc";
      author = "Dai";
      homepage = "https://github.com/daig/haddock-cheatsheet#readme";
      url = "";
      synopsis = "A documentation-only package exemplifying haddock markup features";
      description = "A documentation-only package exemplifying haddock markup features";
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