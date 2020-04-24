{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "setlocale"; version = "1.0.0.9"; };
      license = "BSD-3-Clause";
      copyright = "2014-2019, Sven Bartscher";
      maintainer = "sven.bartscher@weltraumschlangen.de";
      author = "Sven Bartscher";
      homepage = "https://bitbucket.org/IchUndNichtDu/haskell-setlocale";
      url = "";
      synopsis = "Haskell bindings to setlocale";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        build-tools = [
          (hsPkgs.buildPackages.hsc2hs or (pkgs.buildPackages.hsc2hs or ((hsPkgs.pkgs-errors).buildToolDepError "hsc2hs")))
          ];
        buildable = true;
        };
      };
    }