{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "wai-middleware-caching-redis";
        version = "0.2.0.0";
        };
      license = "BSD-3-Clause";
      copyright = "Yann Esposito © 2015";
      maintainer = "yann.esposito@gmail.com";
      author = "Yann Esposito";
      homepage = "http://github.com/yogsototh/wai-middleware-caching/tree/master/wai-middleware-caching-redis#readme";
      url = "";
      synopsis = "Cache Wai Middleware using Redis backend";
      description = "Please see README.md";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."wai-middleware-caching" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-caching"))
          (hsPkgs."hedis" or ((hsPkgs.pkgs-errors).buildDepError "hedis"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          ];
        buildable = true;
        };
      tests = {
        "wai-middleware-caching-redis-test" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."wai-middleware-caching-redis" or ((hsPkgs.pkgs-errors).buildDepError "wai-middleware-caching-redis"))
            ];
          buildable = true;
          };
        };
      };
    }