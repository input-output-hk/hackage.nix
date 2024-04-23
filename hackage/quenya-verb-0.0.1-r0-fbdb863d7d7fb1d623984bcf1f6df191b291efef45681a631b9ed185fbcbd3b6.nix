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
      specVersion = "1.10";
      identifier = { name = "quenya-verb"; version = "0.0.1"; };
      license = "AGPL-3.0-only";
      copyright = "Copyright (c) 2015 Kaashif Hymabaccus";
      maintainer = "kaashif@kaashif.co.uk";
      author = "Kaashif Hymabaccus";
      homepage = "";
      url = "";
      synopsis = "Quenya verb conjugator";
      description = "Web app that conjugates Quenya verbs. Uses Scotty to provide a\nRESTful API (but really it's just a single URL you POST to),\nand React.js for a sleek, web scale, flat, synergistic front end.\n\nInstall and run `quenya-verb-server --help` for some more\ninformation on running the program.\n\nSee <http://github.com/kaashif/quenya-verb> for more\ninformation on building the latest version from source, using\nthe API and so on.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."cond" or (errorHandler.buildDepError "cond"))
          (hsPkgs."MissingH" or (errorHandler.buildDepError "MissingH"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
          (hsPkgs."scotty" or (errorHandler.buildDepError "scotty"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."iproute" or (errorHandler.buildDepError "iproute"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
          (hsPkgs."wai-middleware-static" or (errorHandler.buildDepError "wai-middleware-static"))
          (hsPkgs."cmdargs" or (errorHandler.buildDepError "cmdargs"))
          (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
        ];
        buildable = true;
      };
      exes = {
        "quenya-verb-server" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."quenya-verb" or (errorHandler.buildDepError "quenya-verb"))
          ];
          buildable = true;
        };
      };
    };
  }