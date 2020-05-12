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
      specVersion = "2.2";
      identifier = { name = "byteslice"; version = "0.1.2.0"; };
      license = "BSD-3-Clause";
      copyright = "2019 Andrew Martin";
      maintainer = "andrew.thaddeus@gmail.com";
      author = "Andrew Martin";
      homepage = "https://github.com/andrewthad/byteslice";
      url = "";
      synopsis = "Slicing managed and unmanaged memory";
      description = "This library provides types that allow the user to talk about a slice of\na ByteArray or a MutableByteArray. It also offers UnmanagedBytes, which\nis kind of like a slice into unmanaged memory. However, it is just an\naddress and a length.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."primitive" or (errorHandler.buildDepError "primitive"))
          (hsPkgs."primitive-addr" or (errorHandler.buildDepError "primitive-addr"))
          (hsPkgs."run-st" or (errorHandler.buildDepError "run-st"))
          ];
        buildable = true;
        };
      };
    }