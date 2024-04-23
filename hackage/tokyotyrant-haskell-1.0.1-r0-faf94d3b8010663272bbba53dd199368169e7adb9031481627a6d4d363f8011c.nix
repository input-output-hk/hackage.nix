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
      identifier = { name = "tokyotyrant-haskell"; version = "1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009 Polar Mobile";
      maintainer = "";
      author = "Gregory Collins <gregory.collins@polarmobile.com>";
      homepage = "http://www.polarmobile.com/";
      url = "";
      synopsis = "FFI bindings to libtokyotyrant";
      description = "This package provides a thin FFI binding to the libtokyotyrant\nC library shipped with Mikio Hirabayashi's Tokyo\nTyrant. (<http://tokyocabinet.sourceforge.net/tyrantdoc/>)";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
        ];
        libs = [
          (pkgs."tokyocabinet" or (errorHandler.sysDepError "tokyocabinet"))
          (pkgs."tokyotyrant" or (errorHandler.sysDepError "tokyotyrant"))
        ];
        buildable = true;
      };
    };
  }