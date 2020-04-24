{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "final"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Gergely Risko <gergely@risko.hu>";
      author = "Gergely Risko <gergely@risko.hu>, Mihaly Barasz <klao@google.com>";
      homepage = "http://github.com/errge/final";
      url = "";
      synopsis = "utility to add extra safety to monadic returns";
      description = "The @Final@ library makes it possible to point out return values in\n(monadic) functions.  This adds extra compile-time safety to your\ncode, because the compiler will warn you if marked return values\naccidentally became middle parts of a big function written with do\nnotation.\n\nDocumentation and examples provided in the @Control.Final@ module's\nown documentation.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          ];
        buildable = true;
        };
      };
    }