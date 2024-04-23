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
      specVersion = "1.10";
      identifier = { name = "proxied"; version = "0.3"; };
      license = "BSD-3-Clause";
      copyright = "(C) 2016-2017 Ryan Scott";
      maintainer = "Ryan Scott <ryan.gl.scott@gmail.com>";
      author = "Ryan Scott";
      homepage = "https://github.com/RyanGlScott/proxied";
      url = "";
      synopsis = "Make functions consume Proxy instead of undefined";
      description = "@proxied@ is a simple library that exports a function to\nconvert constant functions to ones that take a @proxy@\nvalue in the \"Data.Proxied\" module. This is useful for\nretrofiting typeclasses that have functions that return a\nconstant value for any value of a particular type (but\nstill need to consume some value, since one of the\nparameterized types must appear in a typeclass function).\nOften, these functions are given @undefined@ as an\nargument, which might be considered poor design.\n\n@Proxy@, however, does not carry any of the\nerror-throwing risks of @undefined@, so it is much more\npreferable to take @Proxy@ as an argument to a constant\nfunction instead of @undefined@. Unfortunately, @Proxy@\nwas included in @base@ until GHC 7.8, so many of @base@'s\ntypeclasses still contain constant functions that aren't\namenable to passing @Proxy@. @proxied@ addresses this\nissue by providing variants of those typeclass functions\nthat take an explicit @proxy@ value.\n\nThis library also contains the \"Data.Proxyless\" module,\nwhich works in the opposite direction. That is, one can\ntake functions which take @Proxy@ (or @undefined@) as an\nargument and convert them to functions which take no\narguments. This trick relies on the @-XTypeApplications@\nextension, so it is only available with GHC 8.0 or later.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = ([
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
        ] ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.6")) (hsPkgs."generic-deriving" or (errorHandler.buildDepError "generic-deriving"))) ++ pkgs.lib.optional (!(compiler.isGhc && compiler.version.ge "7.8")) (hsPkgs."tagged" or (errorHandler.buildDepError "tagged"));
        buildable = true;
      };
    };
  }