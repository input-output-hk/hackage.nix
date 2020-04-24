{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "strelka"; version = "2.0.1"; };
      license = "MIT";
      copyright = "(c) 2016, Nikita Volkov";
      maintainer = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      author = "Nikita Volkov <nikita.y.volkov@mail.ru>";
      homepage = "https://github.com/nikita-volkov/strelka";
      url = "";
      synopsis = "A simple, flexible and composable web-router";
      description = "An HTTP server can be defined as a request parser, which produces a response,\nwhile managing the application state.\nAs simple as that.\nThis library exploits that fact to produce a very simple and flexible API,\nwhich can be executed on top of any specific HTTP-server implementation (e.g., Warp).\n\n[Library Structure]\nThe API is split into a set of DSLs targeted at solving specific problems in isolation,\nthus facilitating a proper separation of concerns.\n\n[Server Bindings]\nCurrently only a binding to WAI and Warp is known:\n<http://hackage.haskell.org/package/strelka-wai>.\n\n[Demo]\nFor a thorough demonstration of the library and suggested usage patterns\ncheck out the following project:\n<https://github.com/nikita-volkov/strelka-demo>.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."strelka-core" or ((hsPkgs.pkgs-errors).buildDepError "strelka-core"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."attoparsec-data" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-data"))
          (hsPkgs."http-media" or ((hsPkgs.pkgs-errors).buildDepError "http-media"))
          (hsPkgs."url-decoders" or ((hsPkgs.pkgs-errors).buildDepError "url-decoders"))
          (hsPkgs."text-builder" or ((hsPkgs.pkgs-errors).buildDepError "text-builder"))
          (hsPkgs."bytestring-tree-builder" or ((hsPkgs.pkgs-errors).buildDepError "bytestring-tree-builder"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."scientific" or ((hsPkgs.pkgs-errors).buildDepError "scientific"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."hashable" or ((hsPkgs.pkgs-errors).buildDepError "hashable"))
          (hsPkgs."bifunctors" or ((hsPkgs.pkgs-errors).buildDepError "bifunctors"))
          (hsPkgs."semigroups" or ((hsPkgs.pkgs-errors).buildDepError "semigroups"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."base-prelude" or ((hsPkgs.pkgs-errors).buildDepError "base-prelude"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          ];
        buildable = true;
        };
      };
    }