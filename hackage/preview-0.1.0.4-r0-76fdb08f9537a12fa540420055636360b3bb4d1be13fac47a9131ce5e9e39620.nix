{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "preview"; version = "0.1.0.4"; };
      license = "BSD-3-Clause";
      copyright = "2017 factis research GmbH";
      maintainer = "kieran.meinhardt@gmail.com";
      author = "factis research GmbH";
      homepage = "https://github.com/factisresearch/opensource-mono#readme";
      url = "";
      synopsis = "The method of previewing data (instead of wholly show-ing it)";
      description = "The method of previewing data (instead of wholly show-ing it)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
          (hsPkgs."pretty" or ((hsPkgs.pkgs-errors).buildDepError "pretty"))
          (hsPkgs."strict-data" or ((hsPkgs.pkgs-errors).buildDepError "strict-data"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."util-plus" or ((hsPkgs.pkgs-errors).buildDepError "util-plus"))
          ];
        buildable = true;
        };
      };
    }