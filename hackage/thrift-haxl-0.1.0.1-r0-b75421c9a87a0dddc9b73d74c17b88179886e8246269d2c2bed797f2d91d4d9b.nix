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
      specVersion = "3.6";
      identifier = { name = "thrift-haxl"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) Facebook, All Rights Reserved";
      maintainer = "hsthrift-team@fb.com";
      author = "Facebook, Inc.";
      homepage = "https://github.com/facebookincubator/hsthrift";
      url = "";
      synopsis = "Support for using Haxl with Thrift services";
      description = "Support for making Thrift requests using the Haxl concurrency\nframework.\n.\nNOTE: for build instructions and documentation, see\n<https://github.com/facebookincubator/hsthrift>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."thrift-lib" or (errorHandler.buildDepError "thrift-lib"))
          (hsPkgs."hashable" or (errorHandler.buildDepError "hashable"))
          (hsPkgs."haxl" or (errorHandler.buildDepError "haxl"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."text-show" or (errorHandler.buildDepError "text-show"))
          (hsPkgs."text" or (errorHandler.buildDepError "text"))
          (hsPkgs."transformers" or (errorHandler.buildDepError "transformers"))
          (hsPkgs."unordered-containers" or (errorHandler.buildDepError "unordered-containers"))
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ];
        buildable = true;
      };
    };
  }