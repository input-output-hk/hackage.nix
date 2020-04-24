{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "boots-web"; version = "0.2.0.1"; };
      license = "MIT";
      copyright = "2019 Daniel YU";
      maintainer = "leptonyu@gmail.com";
      author = "Daniel YU";
      homepage = "https://github.com/leptonyu/boots#readme";
      url = "";
      synopsis = "Factory for quickly building a web application";
      description = "A quick out-of-box factory using to build web application with many useful builtin components based on [boots](https://hackage.haskell.org/package/boots) and [servant](https://hackage.haskell.org/package/servant).";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."boots" or ((hsPkgs.pkgs-errors).buildDepError "boots"))
          (hsPkgs."boots-app" or ((hsPkgs.pkgs-errors).buildDepError "boots-app"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."microlens" or ((hsPkgs.pkgs-errors).buildDepError "microlens"))
          (hsPkgs."monad-logger" or ((hsPkgs.pkgs-errors).buildDepError "monad-logger"))
          (hsPkgs."salak" or ((hsPkgs.pkgs-errors).buildDepError "salak"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
          (hsPkgs."servant-swagger" or ((hsPkgs.pkgs-errors).buildDepError "servant-swagger"))
          (hsPkgs."swagger2" or ((hsPkgs.pkgs-errors).buildDepError "swagger2"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vault" or ((hsPkgs.pkgs-errors).buildDepError "vault"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }