{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = { build-examples = false; };
    package = {
      specVersion = "1.10";
      identifier = { name = "hedgehog-fn"; version = "1.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Queensland Functional Programming Lab <oᴉ˙ldɟb@llǝʞsɐɥ>";
      author = "Isaac Elliott";
      homepage = "https://github.com/qfpl/hedgehog-fn";
      url = "";
      synopsis = "Function generation for `hedgehog`";
      description = "Generating shrinkable, showable functions with `hedgehog`. See\n`Hedgehog.Function` for example usages.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."contravariant" or ((hsPkgs.pkgs-errors).buildDepError "contravariant"))
          (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."hedgehog" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog"))
            (hsPkgs."hedgehog-fn" or ((hsPkgs.pkgs-errors).buildDepError "hedgehog-fn"))
            ];
          buildable = if flags.build-examples && (compiler.isGhc && (compiler.version).ge "8.0")
            then true
            else false;
          };
        };
      };
    }