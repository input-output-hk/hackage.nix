{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stack-yaml"; version = "0.1.0.0"; };
      license = "MIT";
      copyright = "J Mitchell (jacob.mitchell@iohk.io)";
      maintainer = "phlummox2@gmail.com";
      author = "phlummox 2017, adapted from J Mitchell (jacob.mitchell@iohk.io)";
      homepage = "https://github.com/phlummox/stack-yaml";
      url = "";
      synopsis = "Parse a stack.yaml file";
      description = "stack-yaml parses a \"stack.yaml\" file, as used by stack,\nand returns a simple data structure containing\nits configuration data.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."yaml" or ((hsPkgs.pkgs-errors).buildDepError "yaml"))
          ];
        buildable = true;
        };
      tests = {
        "hup-doctest" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."stack-yaml" or ((hsPkgs.pkgs-errors).buildDepError "stack-yaml"))
            (hsPkgs."doctest" or ((hsPkgs.pkgs-errors).buildDepError "doctest"))
            (hsPkgs."Glob" or ((hsPkgs.pkgs-errors).buildDepError "Glob"))
            ];
          buildable = true;
          };
        };
      };
    }