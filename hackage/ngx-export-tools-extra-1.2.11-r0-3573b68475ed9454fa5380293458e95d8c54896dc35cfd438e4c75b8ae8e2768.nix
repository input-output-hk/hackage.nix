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
    flags = {
      ede = true;
      edeuseprettyprinter = true;
      pcre = true;
      snapaggregateserver = true;
    };
    package = {
      specVersion = "1.20";
      identifier = { name = "ngx-export-tools-extra"; version = "1.2.11"; };
      license = "BSD-3-Clause";
      copyright = "2019-2024 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "https://github.com/lyokha/ngx-export-tools-extra";
      url = "";
      synopsis = "More extra tools for Nginx Haskell module";
      description = "More extra tools for\n<https://github.com/lyokha/nginx-haskell-module Nginx Haskell module>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = (([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."base64" or (errorHandler.buildDepError "base64"))
          (hsPkgs."ngx-export" or (errorHandler.buildDepError "ngx-export"))
          (hsPkgs."ngx-export-tools" or (errorHandler.buildDepError "ngx-export-tools"))
          (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
          (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
          (hsPkgs."http-client-tls" or (errorHandler.buildDepError "http-client-tls"))
          (hsPkgs."http-client-brread-timeout" or (errorHandler.buildDepError "http-client-brread-timeout"))
          (hsPkgs."network" or (errorHandler.buildDepError "network"))
          (hsPkgs."async" or (errorHandler.buildDepError "async"))
          (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          (hsPkgs."safe-exceptions" or (errorHandler.buildDepError "safe-exceptions"))
          (hsPkgs."resolv" or (errorHandler.buildDepError "resolv"))
          (hsPkgs."time" or (errorHandler.buildDepError "time"))
          (hsPkgs."binary" or (errorHandler.buildDepError "binary"))
          (hsPkgs."case-insensitive" or (errorHandler.buildDepError "case-insensitive"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."safe" or (errorHandler.buildDepError "safe"))
        ] ++ pkgs.lib.optionals (flags.snapaggregateserver) [
          (hsPkgs."snap-core" or (errorHandler.buildDepError "snap-core"))
          (hsPkgs."snap-server" or (errorHandler.buildDepError "snap-server"))
          (hsPkgs."enclosed-exceptions" or (errorHandler.buildDepError "enclosed-exceptions"))
        ]) ++ pkgs.lib.optionals (flags.ede) (if flags.edeuseprettyprinter
          then [
            (hsPkgs."ede" or (errorHandler.buildDepError "ede"))
            (hsPkgs."prettyprinter" or (errorHandler.buildDepError "prettyprinter"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
          ]
          else [
            (hsPkgs."ede" or (errorHandler.buildDepError "ede"))
            (hsPkgs."ansi-wl-pprint" or (errorHandler.buildDepError "ansi-wl-pprint"))
            (hsPkgs."trifecta" or (errorHandler.buildDepError "trifecta"))
            (hsPkgs."aeson" or (errorHandler.buildDepError "aeson"))
          ])) ++ pkgs.lib.optionals (flags.pcre) [
          (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
          (hsPkgs."pcre-heavy" or (errorHandler.buildDepError "pcre-heavy"))
        ];
        buildable = true;
      };
    };
  }