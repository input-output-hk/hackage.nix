{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.8";
      identifier = { name = "xml2json"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "yi.codeplayer@gmail.com";
      author = "yihuang";
      homepage = "http://github.com/yihuang/xml2json";
      url = "";
      synopsis = "translate xml to json";
      description = "";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
          (hsPkgs."blaze-builder-conduit" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder-conduit"))
          (hsPkgs."attoparsec-conduit" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-conduit"))
          (hsPkgs."tagstream-conduit" or ((hsPkgs.pkgs-errors).buildDepError "tagstream-conduit"))
          ];
        buildable = true;
        };
      exes = {
        "xml2json" = {
          depends = [
            (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
            (hsPkgs."transformers" or ((hsPkgs.pkgs-errors).buildDepError "transformers"))
            (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
            (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
            (hsPkgs."blaze-builder" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder"))
            (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
            (hsPkgs."unordered-containers" or ((hsPkgs.pkgs-errors).buildDepError "unordered-containers"))
            (hsPkgs."vector" or ((hsPkgs.pkgs-errors).buildDepError "vector"))
            (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
            (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
            (hsPkgs."conduit" or ((hsPkgs.pkgs-errors).buildDepError "conduit"))
            (hsPkgs."blaze-builder-conduit" or ((hsPkgs.pkgs-errors).buildDepError "blaze-builder-conduit"))
            (hsPkgs."attoparsec-conduit" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec-conduit"))
            (hsPkgs."tagstream-conduit" or ((hsPkgs.pkgs-errors).buildDepError "tagstream-conduit"))
            ];
          buildable = true;
          };
        };
      };
    }