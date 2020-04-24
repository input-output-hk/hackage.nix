{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "repr"; version = "0.4.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2011 Bas van Dijk";
      maintainer = "v.dijk.bas@gmail.com";
      author = "Bas van Dijk";
      homepage = "";
      url = "";
      synopsis = "Render overloaded expressions to their textual representation.";
      description = "This library allows you to render overloaded expressions to their\ntextual representation. For example:\n\n@\n*Repr> let r = 1.5 + 2 + (3 + (-4) * (5 - pi / sqrt 6)) :: Repr Double\n*Repr> extract r\n17.281195923884734\n*Repr> show rd\n\\\"1.5 + 2.0 + (3.0 + negate 4.0 * (5.0 - pi / sqrt 6.0))\\\"\n@";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."base-unicode-symbols" or ((hsPkgs.pkgs-errors).buildDepError "base-unicode-symbols"))
          (hsPkgs."random" or ((hsPkgs.pkgs-errors).buildDepError "random"))
          (hsPkgs."string-combinators" or ((hsPkgs.pkgs-errors).buildDepError "string-combinators"))
          (hsPkgs."dstring" or ((hsPkgs.pkgs-errors).buildDepError "dstring"))
          ];
        buildable = true;
        };
      };
    }