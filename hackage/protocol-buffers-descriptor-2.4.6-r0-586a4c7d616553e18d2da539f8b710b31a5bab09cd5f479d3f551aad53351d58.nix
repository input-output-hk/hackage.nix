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
      specVersion = "1.6";
      identifier = { name = "protocol-buffers-descriptor"; version = "2.4.6"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009-2015 Christopher Edward Kuklewicz";
      maintainer = "Kostiantyn Rybnikov <k-bx@k-bx.com>";
      author = "Christopher Edward Kuklewicz";
      homepage = "https://github.com/k-bx/protocol-buffers";
      url = "http://hackage.haskell.org/package/protocol-buffers-descriptor";
      synopsis = "Text.DescriptorProto.Options and code generated from the Google Protocol Buffer specification";
      description = "Uses protocol-buffers package";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."protocol-buffers" or (errorHandler.buildDepError "protocol-buffers"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
          ];
        buildable = true;
        };
      };
    }