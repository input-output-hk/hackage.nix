{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "pec"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "Brett letner 2011";
      maintainer = "Brett Letner <brettletner@gmail.com>";
      author = "Brett Letner <brettletner@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "pec embedded compiler";
      description = "The intent of pec is to provide a drop-in replacement for C, but with modern language features.  Pec is a procedural language with a functional/declarative feel.  Programming in pec is very similar to monadic programming in Haskell.  The primary use case for pec is to provide a productive environment for writing safe, performant embedded applications.";
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
        "pec" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."derive" or ((hsPkgs.pkgs-errors).buildDepError "derive"))
            (hsPkgs."array" or ((hsPkgs.pkgs-errors).buildDepError "array"))
            (hsPkgs."filepath" or ((hsPkgs.pkgs-errors).buildDepError "filepath"))
            (hsPkgs."cmdargs" or ((hsPkgs.pkgs-errors).buildDepError "cmdargs"))
            (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
            (hsPkgs."process" or ((hsPkgs.pkgs-errors).buildDepError "process"))
            (hsPkgs."directory" or ((hsPkgs.pkgs-errors).buildDepError "directory"))
            ];
          buildable = true;
          };
        };
      };
    }