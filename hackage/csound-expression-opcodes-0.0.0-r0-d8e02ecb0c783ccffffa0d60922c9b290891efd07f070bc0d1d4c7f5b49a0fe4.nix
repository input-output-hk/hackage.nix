{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "csound-expression-opcodes"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<anton.kholomiov@gmail.com>";
      author = "Anton Kholomiov";
      homepage = "";
      url = "";
      synopsis = "opcodes for the library csound-expression";
      description = "opcodes for the library csound-expression";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."csound-expression-typed" or ((hsPkgs.pkgs-errors).buildDepError "csound-expression-typed"))
          (hsPkgs."csound-expression-dynamic" or ((hsPkgs.pkgs-errors).buildDepError "csound-expression-dynamic"))
          ];
        buildable = true;
        };
      };
    }