{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "scottish"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2014 Zhang Yichao";
      maintainer = "Zhang Yichao <echaozh@gmail.com>";
      author = "Zhang Yichao <echaozh@gmail.com>";
      homepage = "https://github.com/echaozh/scottish";
      url = "";
      synopsis = "scotty with batteries included";
      description = "Scotty web framework with batteries included. For configurations/states, you\ndon't need to hand-roll your own monads every time. Scottish will manage it\nfor you.\n\n@\n&#123;-&#35; LANGUAGE OverloadedStrings &#35;-&#125;\n\nimport Web.Scottish\n\nimport Data.Monoid (mconcat)\nimport Data.Monoid (mconcat)\nimport Data.Text.Lazy (Text)\nimport Network.HTTP.Types.Status (notFound404)\n\nmain = scottish&#39; 3000 \$ do\n&#32;&#32;setConfig (Just \"beam\")\n\n&#32;&#32;get &#34;/&#34; \$ do\n&#32;&#32;&#32;&#32;beam <- getConfig :: ScottishActionM&#39; (Maybe Text) () (Maybe Text)\n&#32;&#32;&#32;&#32;html \$ mconcat [&#34;&#60;h1&#62;Scotty, &#34;, fromJust beam, &#34; me up!&#60;/h1&#62;&#34;]\n\n&#32;&#32;get &#34;/:word&#34; \$ do\n&#32;&#32;&#32;&#32;raise notFound404\n@\n\n[Scotty] <http://hackage.haskell.org/package/scotty>";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."enclosed-exceptions" or ((hsPkgs.pkgs-errors).buildDepError "enclosed-exceptions"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."lens" or ((hsPkgs.pkgs-errors).buildDepError "lens"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."persistent" or ((hsPkgs.pkgs-errors).buildDepError "persistent"))
          (hsPkgs."resource-pool" or ((hsPkgs.pkgs-errors).buildDepError "resource-pool"))
          (hsPkgs."scotty" or ((hsPkgs.pkgs-errors).buildDepError "scotty"))
          (hsPkgs."stm" or ((hsPkgs.pkgs-errors).buildDepError "stm"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."wai" or ((hsPkgs.pkgs-errors).buildDepError "wai"))
          (hsPkgs."warp" or ((hsPkgs.pkgs-errors).buildDepError "warp"))
          ];
        buildable = true;
        };
      };
    }