{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "2.2";
      identifier = { name = "streaming-events"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Kadena LLC";
      maintainer = "colin@kadena.io";
      author = "Colin Woodbury";
      homepage = "https://github.com/kadena-io/streaming-events";
      url = "";
      synopsis = "Client-side consumption of a ServerEvent.";
      description = "Client-side consumption of a ServerEvent.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "attoparsec"))
          (hsPkgs."base" or ((hsPkgs.pkgs-errors).buildDepError "base"))
          (hsPkgs."binary" or ((hsPkgs.pkgs-errors).buildDepError "binary"))
          (hsPkgs."bytestring" or ((hsPkgs.pkgs-errors).buildDepError "bytestring"))
          (hsPkgs."http-client" or ((hsPkgs.pkgs-errors).buildDepError "http-client"))
          (hsPkgs."streaming" or ((hsPkgs.pkgs-errors).buildDepError "streaming"))
          (hsPkgs."streaming-attoparsec" or ((hsPkgs.pkgs-errors).buildDepError "streaming-attoparsec"))
          (hsPkgs."streaming-bytestring" or ((hsPkgs.pkgs-errors).buildDepError "streaming-bytestring"))
          (hsPkgs."wai-extra" or ((hsPkgs.pkgs-errors).buildDepError "wai-extra"))
          ];
        buildable = true;
        };
      };
    }