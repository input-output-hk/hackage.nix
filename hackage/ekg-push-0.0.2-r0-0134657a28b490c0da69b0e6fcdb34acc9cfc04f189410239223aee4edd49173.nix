{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.18";
      identifier = { name = "ekg-push"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "andrew.darqui@gmail.com";
      author = "Andrew Darqui";
      homepage = "https://github.com/adarqui/ekg-push";
      url = "";
      synopsis = "Small framework to push metric deltas to a broadcast channel using the ekg-core library.";
      description = "This library lets you push metric samples to a broadcast channel. Consumers can then persist the samples as they wish.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          ];
        buildable = true;
        };
      exes = {
        "basic" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
            (hsPkgs."ekg-push" or ((hsPkgs.pkgs-errors).buildDepError "ekg-push"))
            ];
          buildable = true;
          };
        };
      };
    }