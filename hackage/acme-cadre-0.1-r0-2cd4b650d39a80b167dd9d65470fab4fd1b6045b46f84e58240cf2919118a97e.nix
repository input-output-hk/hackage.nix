{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "acme-cadre"; version = "0.1"; };
      license = "LicenseRef-PublicDomain";
      copyright = "";
      maintainer = "Jafet <jafet.vixle@gmail.com>";
      author = "Jafet";
      homepage = "";
      url = "";
      synopsis = "car, cdr and more";
      description = "Powerful and compositional tuple processing, informed by classic functional programming principles.";
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