{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "file-templates"; version = "1.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "BSD3";
      maintainer = "anfelor@posteo.de";
      author = "Anton Felix Lorenzen";
      homepage = "https://github.com/anfelor/file-templates#readme";
      url = "";
      synopsis = "Use templates for files and directories";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "new" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."foundation" or ((hsPkgs.pkgs-errors).buildDepError "foundation"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            ];
          buildable = true;
          };
        };
      };
    }