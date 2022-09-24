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
      specVersion = "3.0";
      identifier = { name = "nix-serve-ng"; version = "1.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2022 Arista Networks";
      maintainer = "opensource@awakesecurity.com";
      author = "Arista Networks";
      homepage = "";
      url = "";
      synopsis = "A drop-in replacement for nix-serve that's faster and more stable";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "nix-serve" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."base16" or (errorHandler.buildDepError "base16"))
            (hsPkgs."base32" or (errorHandler.buildDepError "base32"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."charset" or (errorHandler.buildDepError "charset"))
            (hsPkgs."http-types" or (errorHandler.buildDepError "http-types"))
            (hsPkgs."managed" or (errorHandler.buildDepError "managed"))
            (hsPkgs."megaparsec" or (errorHandler.buildDepError "megaparsec"))
            (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
            (hsPkgs."network" or (errorHandler.buildDepError "network"))
            (hsPkgs."optparse-applicative" or (errorHandler.buildDepError "optparse-applicative"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            (hsPkgs."wai" or (errorHandler.buildDepError "wai"))
            (hsPkgs."wai-extra" or (errorHandler.buildDepError "wai-extra"))
            (hsPkgs."warp" or (errorHandler.buildDepError "warp"))
            (hsPkgs."warp-tls" or (errorHandler.buildDepError "warp-tls"))
            ];
          libs = if system.isOsx
            then [ (pkgs."c++" or (errorHandler.sysDepError "c++")) ]
            else (pkgs.lib).optional (system.isLinux) (pkgs."stdc++" or (errorHandler.sysDepError "stdc++"));
          pkgconfig = [
            (pkgconfPkgs."nix-store" or (errorHandler.pkgConfDepError "nix-store"))
            ];
          buildable = (if system.isX86_64 && system.isLinux
            then true
            else if system.isAarch64 && system.isLinux
              then true
              else if system.isAarch64 && system.isOsx
                then true
                else if system.isX86_64 && system.isOsx
                  then true
                  else false) && (if system.isOsx
            then true
            else if system.isLinux then true else false);
          };
        };
      benchmarks = {
        "benchmark" = {
          depends = [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."async" or (errorHandler.buildDepError "async"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            (hsPkgs."http-client" or (errorHandler.buildDepError "http-client"))
            (hsPkgs."text" or (errorHandler.buildDepError "text"))
            (hsPkgs."turtle" or (errorHandler.buildDepError "turtle"))
            (hsPkgs."tasty-bench" or (errorHandler.buildDepError "tasty-bench"))
            (hsPkgs."temporary" or (errorHandler.buildDepError "temporary"))
            (hsPkgs."vector" or (errorHandler.buildDepError "vector"))
            ];
          buildable = true;
          };
        };
      };
    }