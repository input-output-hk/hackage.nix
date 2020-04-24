{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "haskell-aliyun"; version = "0.1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yi.codeplayer@gmail.com";
      author = "yihuang";
      homepage = "https://github.com/yihuang/haskell-aliyun/";
      url = "";
      synopsis = "haskell client of aliyun service.";
      description = "See git page (https://github.com/yihuang/haskell-aliyun/)";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."http-conduit" or ((hsPkgs.pkgs-errors).buildDepError "http-conduit"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."monad-control" or ((hsPkgs.pkgs-errors).buildDepError "monad-control"))
          (hsPkgs."transformers-base" or ((hsPkgs.pkgs-errors).buildDepError "transformers-base"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."old-locale" or ((hsPkgs.pkgs-errors).buildDepError "old-locale"))
          (hsPkgs."Crypto" or ((hsPkgs.pkgs-errors).buildDepError "Crypto"))
          (hsPkgs."data-default" or ((hsPkgs.pkgs-errors).buildDepError "data-default"))
          (hsPkgs."resourcet" or ((hsPkgs.pkgs-errors).buildDepError "resourcet"))
          (hsPkgs."basic-prelude" or ((hsPkgs.pkgs-errors).buildDepError "basic-prelude"))
          (hsPkgs."base64-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "base64-bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."lifted-base" or ((hsPkgs.pkgs-errors).buildDepError "lifted-base"))
          (hsPkgs."xml2json" or ((hsPkgs.pkgs-errors).buildDepError "xml2json"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."safe" or ((hsPkgs.pkgs-errors).buildDepError "safe"))
          (hsPkgs."system-filepath" or ((hsPkgs.pkgs-errors).buildDepError "system-filepath"))
          ];
        buildable = true;
        };
      };
    }