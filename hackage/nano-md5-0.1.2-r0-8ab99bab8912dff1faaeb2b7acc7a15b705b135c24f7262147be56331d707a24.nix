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
    flags = { split-base = true; };
    package = {
      specVersion = "1.2";
      identifier = { name = "nano-md5"; version = "0.1.2"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "<dons@galois.com>";
      author = "Don Stewart ";
      homepage = "http://code.haskell.org/~dons/code/nano-md5";
      url = "";
      synopsis = "Efficient, ByteString bindings to OpenSSL.";
      description = "Efficient, ByteString bindings to OpenSSL.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.split-base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."crypto" or (errorHandler.sysDepError "crypto")) ];
        buildable = true;
        };
      };
    }