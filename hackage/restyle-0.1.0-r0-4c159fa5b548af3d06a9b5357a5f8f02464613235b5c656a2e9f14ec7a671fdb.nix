{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "restyle"; version = "0.1.0"; };
      license = "MIT";
      copyright = "(c) 2010 Daniel Fischer";
      maintainer = "Daniel Fischer <daniel.is.fischer@web.de>";
      author = "Daniel Fischer";
      homepage = "";
      url = "";
      synopsis = "Convert between camel case and separated words style.";
      description = "Functions to transform Haskell source files and\nhaddock(or HsColour)-produced HTML files from camel case\nto separated words or Haskell source from separated words\nto camel case.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      exes = {
        "restyle" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            ];
          buildable = true;
          };
        };
      };
    }