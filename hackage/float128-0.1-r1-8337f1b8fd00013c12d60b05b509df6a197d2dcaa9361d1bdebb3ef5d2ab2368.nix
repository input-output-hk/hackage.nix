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
      identifier = { name = "float128"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2020 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/float128";
      url = "";
      synopsis = "FFI bindings for C _Float128";
      description = "This package provides a Float128 type, wrapping C's _Float128, which\nis typically a IEEE quadruple precision binary floating point type.\nIt does not provide a CFloat128 type usable for FFI without wrapping in Ptr,\nthis needs to be done by the compiler.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
          ];
        buildable = true;
        };
      };
    }