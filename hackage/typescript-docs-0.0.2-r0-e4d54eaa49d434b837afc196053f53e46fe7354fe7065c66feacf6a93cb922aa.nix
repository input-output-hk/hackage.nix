{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.4";
      identifier = { name = "typescript-docs"; version = "0.0.2"; };
      license = "MIT";
      copyright = "(c) DICOM Grid Inc. 2013";
      maintainer = "Phillip Freeman <paf31@cantab.net>";
      author = "Phillip Freeman <paf31@cantab.net>";
      homepage = "http://github.com/paf31/typescript-docs";
      url = "";
      synopsis = "A documentation generator for TypeScript Definition files";
      description = "A documentation generator for TypeScript Definition files";
      buildType = "Simple";
      };
    components = {
      exes = {
        "typescript-docs" = {
          depends = [
            (hsPkgs."utf8-string" or ((hsPkgs.pkgs-errors).buildDepError "utf8-string"))
            (hsPkgs."syb" or ((hsPkgs.pkgs-errors).buildDepError "syb"))
            (hsPkgs."split" or ((hsPkgs.pkgs-errors).buildDepError "split"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."filemanip" or ((hsPkgs.pkgs-errors).buildDepError "filemanip"))
            (hsPkgs."cmdtheline" or ((hsPkgs.pkgs-errors).buildDepError "cmdtheline"))
            (hsPkgs."containers" or ((hsPkgs.pkgs-errors).buildDepError "containers"))
            (hsPkgs."blaze-html" or ((hsPkgs.pkgs-errors).buildDepError "blaze-html"))
            (hsPkgs."parsec" or ((hsPkgs.pkgs-errors).buildDepError "parsec"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."language-typescript" or ((hsPkgs.pkgs-errors).buildDepError "language-typescript"))
            ];
          buildable = true;
          };
        };
      };
    }