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
      identifier = { name = "safe-globals"; version = "0.1.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Keegan McAllister <mcallister.keegan@gmail.com>";
      author = "Keegan McAllister <mcallister.keegan@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Safe top-level mutable variables which scope like ordinary values";
      description = "This library provides a way to declare @IORef@s, @TVar@s, @Chan@s, etc.\nat the top level of a module.\n\n* Declarations are safe.  User code does not invoke @unsafePerformIO@\nor compiler pragmas.\n\n* Variables are ordinary module-level bindings.  Their scope can be\ncontrolled through the usual module import/export mechanism.  Unrelated\ncode cannot interfere with private variables by guessing some global\nidentifier.\n\n* References are statically typed, and polymorphic references are statically\nforbidden.\n\n* The implementation is simple, and closely follows existing common practice.\n\nThis library does not prevent the software design problems caused by global\nstate.  Rather, it provides some implementation safety for those\ncircumstances where global state really is necessary.\n\nFundamentally this library just provides Template Haskell macros for the\nusual @unsafePerformIO@ trick, so it is subject to the same caveats.  In\nparticular, linking a module and then loading the same module dynamically\nthrough the GHC API may produce two copies of the same top-level variable.\nSee the documentation of @unsafePerformIO@ for additional compiler-specific\nrequirements.\n\nThis library may not work properly on GHC before 7.4, due to a GHC bug:\n<http://hackage.haskell.org/trac/ghc/ticket/5558>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."stm" or (errorHandler.buildDepError "stm"))
          (hsPkgs."template-haskell" or (errorHandler.buildDepError "template-haskell"))
        ];
        buildable = true;
      };
    };
  }