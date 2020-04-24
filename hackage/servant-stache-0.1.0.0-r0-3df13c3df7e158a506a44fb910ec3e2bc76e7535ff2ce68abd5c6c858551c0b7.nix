{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "servant-stache"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2018 Tatsuya Hirose";
      maintainer = "tatsuya.hirose.0804@gmail.com";
      author = "Tatsuya Hirose";
      homepage = "https://github.com/lotz84/servant-stache#readme";
      url = "";
      synopsis = "Content-Types for rendering Mustache in servant";
      description = "Content-Types and template management for rendering Mustache templates in servant Web applications. This package is heavily inspired by <http://hackage.haskell.org/package/servant-ede servant-ede>. Documentation and examples available at \"Servant.Mustache\".";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."servant" or ((hsPkgs.pkgs-errors).buildDepError "servant"))
          (hsPkgs."stache" or ((hsPkgs.pkgs-errors).buildDepError "stache"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."xss-sanitize" or ((hsPkgs.pkgs-errors).buildDepError "xss-sanitize"))
          ];
        buildable = true;
        };
      exes = {
        "example" = {
          depends = [
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
            (hsPkgs."servant-server" or ((hsPkgs.pkgs-errors).buildDepError "servant-server"))
            (hsPkgs."servant-stache" or ((hsPkgs.pkgs-errors).buildDepError "servant-stache"))
            (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
            ];
          buildable = true;
          };
        };
      };
    }