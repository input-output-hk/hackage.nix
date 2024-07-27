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
      specVersion = "1.24";
      identifier = { name = "fltkhs-themes"; version = "0.2.0.3"; };
      license = "BSD-3-Clause";
      copyright = "2018 Aditya Siram";
      maintainer = "aditya.siram@gmail.com";
      author = "Aditya Siram";
      homepage = "https://github.com/deech/fltkhs-themes#readme";
      url = "";
      synopsis = "A set of themed widgets that provides drop in replacements to the ones in FLTKHS.";
      description = "Please see the README on Github at <https://github.com/deech/fltkhs-themes#readme>";
      buildType = "Custom";
      setup-depends = [
        (hsPkgs.pkgsBuildBuild.Cabal or (pkgs.pkgsBuildBuild.Cabal or (errorHandler.setupDepError "Cabal")))
        (hsPkgs.pkgsBuildBuild.base or (pkgs.pkgsBuildBuild.base or (errorHandler.setupDepError "base")))
      ];
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."fltkhs" or (errorHandler.buildDepError "fltkhs"))
          (hsPkgs."load-font" or (errorHandler.buildDepError "load-font"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
        ];
        libs = pkgs.lib.optional (system.isLinux) (pkgs."fontconfig" or (errorHandler.sysDepError "fontconfig"));
        buildable = true;
      };
    };
  }