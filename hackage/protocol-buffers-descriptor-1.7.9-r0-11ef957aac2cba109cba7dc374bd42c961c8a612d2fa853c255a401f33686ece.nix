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
    flags = { small_base = true; };
    package = {
      specVersion = "1.6";
      identifier = { name = "protocol-buffers-descriptor"; version = "1.7.9"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Christopher Edward Kuklewicz";
      maintainer = "Chris Kuklewicz <protobuf@personal.mightyreason.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "http://hackage.haskell.org/cgi-bin/hackage-scripts/package/protocol-buffers";
      url = "http://code.haskell.org/protocol-buffers/";
      synopsis = "Text.DescriptorProto.Options and Google Protocol Buffer specifications";
      description = "Uses protocol-buffers package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ] ++ [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }