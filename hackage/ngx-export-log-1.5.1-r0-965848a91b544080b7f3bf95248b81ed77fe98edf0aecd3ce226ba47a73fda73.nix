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
      specVersion = "1.20";
      identifier = { name = "ngx-export-log"; version = "1.5.1"; };
      license = "BSD-3-Clause";
      copyright = "2022 Alexey Radkov";
      maintainer = "Alexey Radkov <alexey.radkov@gmail.com>";
      author = "Alexey Radkov <alexey.radkov@gmail.com>";
      homepage = "http://github.com/lyokha/nginx-log-plugin";
      url = "";
      synopsis = "Native Nginx logging from configuration files and Haskell handlers";
      description = "Native Nginx logging from configuration files and Haskell handlers.\n\nThis is a part of <https://github.com/lyokha/nginx-log-plugin>. Custom\nlibraries are required to be linked against C module /ngx_log_plugin/.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
          (hsPkgs."ngx-export" or (errorHandler.buildDepError "ngx-export"))
          (hsPkgs."ngx-export-tools" or (errorHandler.buildDepError "ngx-export-tools"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
        ];
        buildable = true;
      };
    };
  }