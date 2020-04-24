{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "bronyradiogermany-streaming";
        version = "1.0.0.1";
        };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "darcs@enumeration.eu";
      author = "Enum Cohrs";
      homepage = "";
      url = "";
      synopsis = "Streaming interface for the BronyRadioGermany API.";
      description = "This is a streaming interface for the API of BronyRadioGermany. Features: get the currently played song, the entire song history, the AutoDj track list, vote statistics, and the raw audio streams; it can also post up- and downvotes, as well as song requests. If you prefer conduit over streaming, please have a look at bronyradiogermany-conduit.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
          (hsPkgs."streaming-utils" or ((hsPkgs.pkgs-errors).buildDepError "streaming-utils"))
          (hsPkgs."bronyradiogermany-common" or ((hsPkgs.pkgs-errors).buildDepError "bronyradiogermany-common"))
          (hsPkgs."uuid" or ((hsPkgs.pkgs-errors).buildDepError "uuid"))
          (hsPkgs."text" or ((hsPkgs.pkgs-errors).buildDepError "text"))
          (hsPkgs."aeson" or ((hsPkgs.pkgs-errors).buildDepError "aeson"))
          (hsPkgs."time" or ((hsPkgs.pkgs-errors).buildDepError "time"))
          (hsPkgs."mtl" or ((hsPkgs.pkgs-errors).buildDepError "mtl"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."case-insensitive" or ((hsPkgs.pkgs-errors).buildDepError "case-insensitive"))
          (hsPkgs."http-types" or ((hsPkgs.pkgs-errors).buildDepError "http-types"))
          ];
        buildable = true;
        };
      };
    }