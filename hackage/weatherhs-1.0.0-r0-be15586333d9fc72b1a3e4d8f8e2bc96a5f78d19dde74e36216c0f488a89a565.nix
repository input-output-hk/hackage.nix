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
    flags = { encryption = true; nojson = false; noxml = false; };
    package = {
      specVersion = "2.2";
      identifier = { name = "weatherhs"; version = "1.0.0"; };
      license = "GPL-3.0-or-later";
      copyright = "(C) 2022 Nikola Hadžić";
      maintainer = "nikola.hadzic.000@protonmail.com";
      author = "Nikola Hadžić";
      homepage = "https://gitlab.com/NH000/weatherhs#readme";
      url = "";
      synopsis = "Weather and related data info command-line tool";
      description = "Command-line tool that retrieves and nicely outputs weather and related data from [Weather API](https://www.weatherapi.com/), in the table form.";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.buildPackages.base or (pkgs.buildPackages.base or (errorHandler.setupDepError "base")))
        (hsPkgs.buildPackages.Cabal or (pkgs.buildPackages.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.buildPackages.hgettext or (pkgs.buildPackages.hgettext or (errorHandler.setupDepError "hgettext")))
        ];
      };
    components = {
      exes = {
        "weatherhs" = {
          depends = (([
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."scientific" or (errorHandler.buildDepError "scientific"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."regex-pcre" or (errorHandler.buildDepError "regex-pcre"))
            (hsPkgs."time" or (errorHandler.buildDepError "time"))
            (hsPkgs."setlocale" or (errorHandler.buildDepError "setlocale"))
            (hsPkgs."hgettext" or (errorHandler.buildDepError "hgettext"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
            (hsPkgs."terminal-size" or (errorHandler.buildDepError "terminal-size"))
            (hsPkgs."extra" or (errorHandler.buildDepError "extra"))
            ] ++ (pkgs.lib).optionals (flags.encryption) [
            (hsPkgs."h-gpgme" or (errorHandler.buildDepError "h-gpgme"))
            (hsPkgs."directory" or (errorHandler.buildDepError "directory"))
            ]) ++ (pkgs.lib).optional (!flags.nojson) (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))) ++ (pkgs.lib).optional (!flags.noxml) (hsPkgs."xml" or (errorHandler.buildDepError "xml"));
          buildable = true;
          };
        };
      };
    }