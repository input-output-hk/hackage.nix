{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "clang-compilation-database";
        version = "0.1.0.1";
        };
      license = "MIT";
      copyright = "";
      maintainer = "akliger at gmail dot com";
      author = "Aleksey Kliger";
      homepage = "https://github.com/lambdageek/clang-compilation-database";
      url = "";
      synopsis = "JSON Compilation Database Format encoding and decoding";
      description = "See README.md\n\nThis library provides a data type to represent a\n<http://clang.llvm.org/docs/JSONCompilationDatabase.html JSON Compilation Database Format file>\n\nIt may be useful for static analysis tools that need to know the exact commands executed\nby a build system such as make.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      tests = {
        "smoke-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."clang-compilation-database" or ((hsPkgs.pkgs-errors).buildDepError "clang-compilation-database"))
            ];
          buildable = true;
          };
        };
      };
    }