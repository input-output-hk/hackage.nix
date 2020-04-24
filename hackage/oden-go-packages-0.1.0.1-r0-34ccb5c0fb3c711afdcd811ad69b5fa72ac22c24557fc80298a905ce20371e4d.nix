{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "oden-go-packages"; version = "0.1.0.1"; };
      license = "MIT";
      copyright = "Oskar Wickström";
      maintainer = "Oskar Wickström <oskar.wickstrom@gmail.com>";
      author = "Oskar Wickström <oskar.wickstrom@gmail.com>";
      homepage = "http://oden-lang.org";
      url = "";
      synopsis = "Provides Go package metadata.";
      description = "Provides a Haskell interface to the Go package importer, enabling querying\nGo packages for definitions and their types.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      };
    }