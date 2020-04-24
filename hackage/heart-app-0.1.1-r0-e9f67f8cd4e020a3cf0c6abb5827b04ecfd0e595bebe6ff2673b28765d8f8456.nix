{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "heart-app"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2019 Eric Conlon";
      maintainer = "ejconlon@gmail.com";
      author = "Eric Conlon";
      homepage = "https://github.com/ejconlon/heart-app#readme";
      url = "";
      synopsis = "An opinionated app prelude and framework in the UnliftIO style";
      description = "Please see the README on GitHub at <https://github.com/ejconlon/heart-app#readme>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."co-log" or ((hsPkgs.pkgs-errors).buildDepError "co-log"))
          (hsPkgs."co-log-core" or ((hsPkgs.pkgs-errors).buildDepError "co-log-core"))
          (hsPkgs."ekg" or ((hsPkgs.pkgs-errors).buildDepError "ekg"))
          (hsPkgs."ekg-core" or ((hsPkgs.pkgs-errors).buildDepError "ekg-core"))
          (hsPkgs."ekg-statsd" or ((hsPkgs.pkgs-errors).buildDepError "ekg-statsd"))
          (hsPkgs."heart-core" or ((hsPkgs.pkgs-errors).buildDepError "heart-core"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          ];
        buildable = true;
        };
      };
    }