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
    flags = { old_base = false; use-pkg-config = false; };
    package = {
      specVersion = "1.8.0";
      identifier = { name = "pcre-light"; version = "0.4.1.0"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2010. Don Stewart <dons@galois.com>";
      maintainer = "Daniel Díaz <dhelta.diaz@gmail.com>";
      author = "Don Stewart";
      homepage = "https://github.com/Daniel-Diaz/pcre-light";
      url = "";
      synopsis = "Portable regex library for Perl 5 compatible regular expressions";
      description = "A small, efficient and portable regex library for Perl 5 compatible regular expressions\n\nThe PCRE library is a set of functions that implement regular\nexpression pattern matching using the same syntax and semantics as Perl 5.\n\nIf installation fails reporting that you are missing the prce C library, try installing\nthe @libpcre3-dev@ package (linux) or @brew install pcre@ (MacOS).\n";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = if flags.old_base
          then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
          else [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
            ];
        libs = (pkgs.lib).optional (!flags.use-pkg-config) (pkgs."pcre" or (errorHandler.sysDepError "pcre"));
        pkgconfig = (pkgs.lib).optional (flags.use-pkg-config) (pkgconfPkgs."libpcre" or (errorHandler.pkgConfDepError "libpcre"));
        buildable = true;
        };
      tests = {
        "unit" = {
          depends = if flags.old_base
            then [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ]
            else [
              (hsPkgs."base" or (errorHandler.buildDepError "base"))
              (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
              (hsPkgs."containers" or (errorHandler.buildDepError "containers"))
              (hsPkgs."HUnit" or (errorHandler.buildDepError "HUnit"))
              (hsPkgs."mtl" or (errorHandler.buildDepError "mtl"))
              (hsPkgs."pcre-light" or (errorHandler.buildDepError "pcre-light"))
              ];
          buildable = true;
          };
        };
      };
    }