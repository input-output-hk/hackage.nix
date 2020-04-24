{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xml-to-json-fast"; version = "1.0.1"; };
      license = "MIT";
      copyright = "Copyright Noam Lewis, 2014";
      maintainer = "jones.noamle@gmail.com";
      author = "Noam Lewis";
      homepage = "https://github.com/sinelaw/xml-to-json-fast";
      url = "";
      synopsis = "Fast, light converter of xml to json capable of handling huge xml files";
      description = "Assumes input xml is valid, which allows constant memory usage (<4 MB) and faster parsing. For a fully-featured, but memory-bound converter see the xml-to-json package.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."tagsoup" or ((hsPkgs.pkgs-errors).buildDepError "tagsoup"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "xml-to-json-fast" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."xml-to-json-fast" or ((hsPkgs.pkgs-errors).buildDepError "xml-to-json-fast"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }