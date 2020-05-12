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
      specVersion = "0";
      identifier = { name = "hsXenCtrl"; version = "0.0.4"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "thomas.dubuisson@gmail.com";
      author = "Thomas M. DuBuisson";
      homepage = "http://haskell.org/haskellwiki/HsXenCtrl";
      url = "";
      synopsis = "FFI bindings to the Xen Control library.";
      description = "FFI bindings to xenctrl.h and perhaps more.\nThe System.Xen.CBindings should provide direct access\nto the C API while System.Xen will eventually provide\na higher level abstraction.  This library binding\nallows pure haskell programs to use XenCtrl functions;\nthis can be Haskell versions of xend, xm, and\nvirt-manager but more interesting projects are possible.\nThink about a happs app controlling domains and complex\npolicy controls on resource (CPU, memory, PCI) uses.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
          (hsPkgs."array" or (errorHandler.buildDepError "array"))
          ];
        libs = [ (pkgs."xenctrl" or (errorHandler.sysDepError "xenctrl")) ];
        buildable = true;
        };
      };
    }