{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "language-c-comments"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "ghulette@gmail.com";
      author = "Geoff Hulette";
      homepage = "http://github.com/ghulette/language-c-comments";
      url = "";
      synopsis = "Extracting comments from C code";
      description = "A library for extracting comments from C code.  It\nwill parse both single- and multi-line comments, and\ncorrectly handles split lines.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
          (hsPkgs."language-c" or ((hsPkgs.pkgs-errors).buildDepError "language-c"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.alex or (pkgs.buildPackages.alex or ((hsPkgs.pkgs-errors).buildToolDepError "alex")))
          ];
        buildable = true;
        };
      };
    }