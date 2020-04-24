{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "language-cil"; version = "0.2.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Tom Lokhorst <tom@lokhorst.eu>";
      author = "Jeroen Leeuwestein,\nTom Lokhorst";
      homepage = "";
      url = "";
      synopsis = "Manipulating Common Intermediate Language AST";
      description = "Language-Cil is a Haskell library for manipulating CIL\nabstract syntax and generating .il files.\n\nCommon Intermediate Language (CIL), formerly known as\nMicrosoft Intermediate Language (MSIL), is the lowest\nlevel language that runs on Microsoft .NET and Mono.\n\nRead more on Wikipedia:\n<http://en.wikipedia.org/wiki/Common_Intermediate_Language>\n\nThis library is still  under development, it only supports\na small subset of the full CIL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bool-extras" or ((hsPkgs.pkgs-errors).buildDepError "bool-extras"))
          ];
        buildable = true;
        };
      };
    }