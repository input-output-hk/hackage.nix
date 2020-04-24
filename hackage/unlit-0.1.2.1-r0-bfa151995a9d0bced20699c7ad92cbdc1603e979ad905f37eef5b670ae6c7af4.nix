{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "unlit"; version = "0.1.2.1"; };
      license = "BSD-3-Clause";
      copyright = "2014 (c) Pepijn Kokke";
      maintainer = "pepijn.kokke@gmail.com";
      author = "Pepijn Kokke";
      homepage = "";
      url = "";
      synopsis = "Tool to convert literate code between styles or to code.";
      description = "Tool to convert literate code between styles or to code.\nUsage:\n\n>\n> unlit\n>   -s STYLE_NAME  --source=STYLE_NAME  Source style (latex, bird, markdown, haskell, all)\n>   -t STYLE_NAME  --target=STYLE_NAME  Target style (latex, bird, markdown, code)\n>   -h             --help               Show help\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      exes = {
        "unlit" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            ];
          buildable = true;
          };
        };
      };
    }