{ system
  , compiler
  , flags
  , pkgs
  , hsPkgs
  , pkgconfPkgs
  , errorHandler
  , config
  , ... }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = { name = "shakebook"; version = "0.13.1.0"; };
      license = "MIT";
      copyright = "2020 Daniel Firth";
      maintainer = "dan.firth@homotopic.tech";
      author = "Daniel Firth";
      homepage = "";
      url = "";
      synopsis = "Shake-based technical documentation generator; HTML & PDF";
      description = "Shakebook is a documentation generator aimed at covering all the bases for mathematical, technical and scientific diagrams and typesetting. Shakebook provides combinators for taking markdown files and combining them into documents, but allowing the user to control how. Shakebook provides general combinators for templating single pages, cofree comonads for representing tables of contents, and zipper comonads for representing pagers.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."aeson-better-errors" or (errorHandler.buildDepError "aeson-better-errors"))
          (hsPkgs."aeson-with" or (errorHandler.buildDepError "aeson-with"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
          (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
          (hsPkgs."comonad-extras" or (errorHandler.buildDepError "comonad-extras"))
          (hsPkgs."compdoc" or (errorHandler.buildDepError "compdoc"))
          (hsPkgs."composite-aeson" or (errorHandler.buildDepError "composite-aeson"))
          (hsPkgs."composite-aeson-cofree-list" or (errorHandler.buildDepError "composite-aeson-cofree-list"))
          (hsPkgs."composite-aeson-path" or (errorHandler.buildDepError "composite-aeson-path"))
          (hsPkgs."composite-aeson-throw" or (errorHandler.buildDepError "composite-aeson-throw"))
          (hsPkgs."composite-aeson-writeonly" or (errorHandler.buildDepError "composite-aeson-writeonly"))
          (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
          (hsPkgs."composite-binary" or (errorHandler.buildDepError "composite-binary"))
          (hsPkgs."composite-hashable" or (errorHandler.buildDepError "composite-hashable"))
          (hsPkgs."composite-tuple" or (errorHandler.buildDepError "composite-tuple"))
          (hsPkgs."composite-xstep" or (errorHandler.buildDepError "composite-xstep"))
          (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
          (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
          (hsPkgs."free" or (errorHandler.buildDepError "free"))
          (hsPkgs."hashable-time" or (errorHandler.buildDepError "hashable-time"))
          (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
          (hsPkgs."ixset-typed-conversions" or (errorHandler.buildDepError "ixset-typed-conversions"))
          (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
          (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
          (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
          (hsPkgs."lucid-cdn" or (errorHandler.buildDepError "lucid-cdn"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
          (hsPkgs."pandoc-throw" or (errorHandler.buildDepError "pandoc-throw"))
          (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
          (hsPkgs."path" or (errorHandler.buildDepError "path"))
          (hsPkgs."path-extensions" or (errorHandler.buildDepError "path-extensions"))
          (hsPkgs."path-utils" or (errorHandler.buildDepError "path-utils"))
          (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
          (hsPkgs."shake-plus" or (errorHandler.buildDepError "shake-plus"))
          (hsPkgs."shake-plus-extended" or (errorHandler.buildDepError "shake-plus-extended"))
          (hsPkgs."sitemap-gen" or (errorHandler.buildDepError "sitemap-gen"))
          (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
          (hsPkgs."stache" or (errorHandler.buildDepError "stache"))
          (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
          (hsPkgs."zipper-extra" or (errorHandler.buildDepError "zipper-extra"))
        ];
        buildable = true;
      };
      tests = {
        "shakebook-test" = {
          depends = [
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
            (hsPkgs."aeson-better-errors" or (errorHandler.buildDepError "aeson-better-errors"))
            (hsPkgs."aeson-with" or (errorHandler.buildDepError "aeson-with"))
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."binary-instances" or (errorHandler.buildDepError "binary-instances"))
            (hsPkgs."comonad" or (errorHandler.buildDepError "comonad"))
            (hsPkgs."comonad-extras" or (errorHandler.buildDepError "comonad-extras"))
            (hsPkgs."compdoc" or (errorHandler.buildDepError "compdoc"))
            (hsPkgs."composite-aeson" or (errorHandler.buildDepError "composite-aeson"))
            (hsPkgs."composite-aeson-cofree-list" or (errorHandler.buildDepError "composite-aeson-cofree-list"))
            (hsPkgs."composite-aeson-path" or (errorHandler.buildDepError "composite-aeson-path"))
            (hsPkgs."composite-aeson-throw" or (errorHandler.buildDepError "composite-aeson-throw"))
            (hsPkgs."composite-aeson-writeonly" or (errorHandler.buildDepError "composite-aeson-writeonly"))
            (hsPkgs."composite-base" or (errorHandler.buildDepError "composite-base"))
            (hsPkgs."composite-binary" or (errorHandler.buildDepError "composite-binary"))
            (hsPkgs."composite-hashable" or (errorHandler.buildDepError "composite-hashable"))
            (hsPkgs."composite-tuple" or (errorHandler.buildDepError "composite-tuple"))
            (hsPkgs."composite-xstep" or (errorHandler.buildDepError "composite-xstep"))
            (hsPkgs."doctemplates" or (errorHandler.buildDepError "doctemplates"))
            (hsPkgs."feed" or (errorHandler.buildDepError "feed"))
            (hsPkgs."free" or (errorHandler.buildDepError "free"))
            (hsPkgs."hashable-time" or (errorHandler.buildDepError "hashable-time"))
            (hsPkgs."ixset-typed" or (errorHandler.buildDepError "ixset-typed"))
            (hsPkgs."ixset-typed-conversions" or (errorHandler.buildDepError "ixset-typed-conversions"))
            (hsPkgs."lens" or (errorHandler.buildDepError "lens"))
            (hsPkgs."lens-aeson" or (errorHandler.buildDepError "lens-aeson"))
            (hsPkgs."lucid" or (errorHandler.buildDepError "lucid"))
            (hsPkgs."lucid-cdn" or (errorHandler.buildDepError "lucid-cdn"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."pandoc" or (errorHandler.buildDepError "pandoc"))
            (hsPkgs."pandoc-throw" or (errorHandler.buildDepError "pandoc-throw"))
            (hsPkgs."pandoc-types" or (errorHandler.buildDepError "pandoc-types"))
            (hsPkgs."path" or (errorHandler.buildDepError "path"))
            (hsPkgs."path-extensions" or (errorHandler.buildDepError "path-extensions"))
            (hsPkgs."path-utils" or (errorHandler.buildDepError "path-utils"))
            (hsPkgs."rio" or (errorHandler.buildDepError "rio"))
            (hsPkgs."shake-plus" or (errorHandler.buildDepError "shake-plus"))
            (hsPkgs."shake-plus-extended" or (errorHandler.buildDepError "shake-plus-extended"))
            (hsPkgs."shakebook" or (errorHandler.buildDepError "shakebook"))
            (hsPkgs."sitemap-gen" or (errorHandler.buildDepError "sitemap-gen"))
            (hsPkgs."skylighting" or (errorHandler.buildDepError "skylighting"))
            (hsPkgs."split" or (errorHandler.buildDepError "split"))
            (hsPkgs."stache" or (errorHandler.buildDepError "stache"))
            (hsPkgs."tasty" or (errorHandler.buildDepError "tasty"))
            (hsPkgs."tasty-golden" or (errorHandler.buildDepError "tasty-golden"))
            (hsPkgs."vinyl" or (errorHandler.buildDepError "vinyl"))
            (hsPkgs."zipper-extra" or (errorHandler.buildDepError "zipper-extra"))
          ];
          buildable = true;
        };
      };
    };
  }