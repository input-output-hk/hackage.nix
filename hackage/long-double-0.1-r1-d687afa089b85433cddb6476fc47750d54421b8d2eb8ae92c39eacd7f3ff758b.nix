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
      identifier = { name = "long-double"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2018 Claude Heiland-Allen";
      maintainer = "claude@mathr.co.uk";
      author = "Claude Heiland-Allen";
      homepage = "https://code.mathr.co.uk/long-double";
      url = "";
      synopsis = "FFI bindings for C long double";
      description = "This package provides a LongDouble type, being 80bits of x87 data taking up\n96bits on i386 and 128bits on x86_64.  On arm it is an alias for 64bit double.\nIt does not provide a CLDouble type usable for FFI without wrapping in Ptr,\nthis needs to be done by the compiler.\nSee <https://ghc.haskell.org/trac/ghc/ticket/3353>.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs."base" or (errorHandler.buildDepError "base"))
          (hsPkgs."integer-gmp" or (errorHandler.buildDepError "integer-gmp"))
        ];
        buildable = if system.isI386
          then true
          else if system.isX86_64
            then true
            else if system.isArm then true else false;
      };
    };
  }