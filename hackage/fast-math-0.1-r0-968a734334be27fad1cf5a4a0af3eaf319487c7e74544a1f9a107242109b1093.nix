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
      specVersion = "1.2.3";
      identifier = { name = "fast-math"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "© 2011, Liyang HU";
      maintainer = "fast-math@liyang.hu";
      author = "Liyang HU";
      homepage = "";
      url = "";
      synopsis = "Non IEEE-754 compliant compile-time floating-point optimisations";
      description = "The \"Numeric.FastMath\" module brings into scope RULES for 'Float's and\n'Double's that rewrite @x-x@, @0*x@ and @x*0@ to @0@. This disagrees\nwith IEEE-754 when @x@ is @NaN@, but is acceptable for most\napplications.\n\nImporting \"Numeric.FastMath.Infinitesimal\" also rewrites @0/x@ to @0@.\n\nOptimisation (at least @-O1@) must be enabled for any RULES to take effect.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
        };
      };
    }