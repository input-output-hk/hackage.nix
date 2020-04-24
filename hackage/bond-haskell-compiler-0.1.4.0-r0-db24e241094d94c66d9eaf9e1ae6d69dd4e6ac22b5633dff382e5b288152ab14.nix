{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "bond-haskell-compiler"; version = "0.1.4.0"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2015 Andrey Sverdlichenko";
      maintainer = "Andrey Sverdlichenko";
      author = "blaze@ruddy.ru";
      homepage = "http://github.com/rblaze/bond-haskell#readme";
      url = "";
      synopsis = "Bond code generator for Haskell";
      description = "Bond is a cross-platform framework for handling schematized\ndata. It supports cross-language de/serialization and\npowerful generic mechanisms for efficiently manipulating\ndata.\n\nThe package contains a command-line compiler/codegen\ntool, named hbc, which is used to generate code for Haskell\nprograms using Bond.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bond" or ((hsPkgs.pkgs-errors).buildDepError "bond"))
          (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
          (hsPkgs."haskell-src-exts" or ((hsPkgs.pkgs-errors).buildDepError "haskell-src-exts"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "hbc" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bond" or ((hsPkgs.pkgs-errors).buildDepError "bond"))
            (hsPkgs."bond-haskell-compiler" or ((hsPkgs.pkgs-errors).buildDepError "bond-haskell-compiler"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."monad-loops" or ((hsPkgs.pkgs-errors).buildDepError "monad-loops"))
            ];
          buildable = true;
          };
        };
      tests = {
        "bond-haskell-compiler-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            ];
          buildable = true;
          };
        };
      };
    }