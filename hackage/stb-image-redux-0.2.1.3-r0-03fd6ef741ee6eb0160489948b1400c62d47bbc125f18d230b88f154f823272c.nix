{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "stb-image-redux"; version = "0.2.1.3"; };
      license = "BSD-3-Clause";
      copyright = "Copyright: (c) 2016-2019 Alexis Williams";
      maintainer = "alexis@typedr.at";
      author = "Alexis Williams";
      homepage = "https://github.com/typedrat/stb-image-redux#readme";
      url = "";
      synopsis = "Image loading and writing microlibrary";
      description = "See <https://github.com/typedrat/stb-image-redux/blob/master/README.md>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          ];
        buildable = true;
        };
      tests = {
        "stb-image-redux-tests" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."stb-image-redux" or ((hsPkgs.pkgs-errors).buildDepError "stb-image-redux"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."hspec" or ((hsPkgs.pkgs-errors).buildDepError "hspec"))
            ];
          buildable = true;
          };
        };
      };
    }