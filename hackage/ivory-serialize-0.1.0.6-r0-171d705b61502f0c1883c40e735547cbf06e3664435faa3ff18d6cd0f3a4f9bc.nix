{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "ivory-serialize"; version = "0.1.0.6"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "leepike@galois.com";
      author = "Galois, Inc.";
      homepage = "";
      url = "";
      synopsis = "Serialization library for Ivory.";
      description = "Used to automatically pack and unpack Ivory structures in big or little endian.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-compat" or ((hsPkgs.pkgs-errors).buildDepError "base-compat"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."monadLib" or ((hsPkgs.pkgs-errors).buildDepError "monadLib"))
          (hsPkgs."ivory" or ((hsPkgs.pkgs-errors).buildDepError "ivory"))
          (hsPkgs."ivory-artifact" or ((hsPkgs.pkgs-errors).buildDepError "ivory-artifact"))
          ];
        buildable = true;
        };
      };
    }