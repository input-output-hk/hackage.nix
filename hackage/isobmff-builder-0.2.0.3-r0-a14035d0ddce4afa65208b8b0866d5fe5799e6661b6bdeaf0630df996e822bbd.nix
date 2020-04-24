{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "isobmff-builder"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2016 Sven Heyll";
      maintainer = "sven.heyll@gmail.com";
      author = "Sven Heyll";
      homepage = "https://github.com/sheyll/isobmff-builder#readme";
      url = "";
      synopsis = "A (bytestring-) builder for the ISO-14496-12 base media file format";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."type-list" or ((hsPkgs.pkgs-errors).buildDepError "type-list"))
          ];
        buildable = true;
        };
      };
    }