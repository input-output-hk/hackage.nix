{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "stack-templatizer"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2020 Pavan Rikhi";
      maintainer = "pavan.rikhi@gmail.com";
      author = "Pavan Rikhi";
      homepage = "https://github.com/prikhi/stack-templatizer#readme";
      url = "";
      synopsis = "Generate a stack template from a folder.";
      description = "@stack-templatizer@ is an application that generates a @.hsfiles@ stack\ntemplate from a folder of template files.\n\nYou can install the application using @stack install stack-templatizer\ninstall@";
      buildType = "Simple";
      };
    components = {
      exes = {
        "stack-templatizer" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            ];
          buildable = true;
          };
        };
      };
    }