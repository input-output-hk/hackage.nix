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
    flags = { small_base = false; };
    package = {
      specVersion = "1.2";
      identifier = { name = "pcre-light"; version = "0.4"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2007-2010. Don Stewart <dons@galois.com>";
      maintainer = "Don Stewart <dons@galois.com>";
      author = "Don Stewart";
      homepage = "http://code.haskell.org/~dons/code/pcre-light";
      url = "";
      synopsis = "A small, efficient and portable regex library for Perl 5 compatible regular expressions";
      description = "A small, efficient and portable regex library for Perl 5 compatible regular expressions\n\nThe PCRE library is a set of functions that implement regular\nexpression pattern matching using the same syntax and semantics as Perl 5.\n\nTest coverage data for this library is available at:\n<http://code.haskell.org/~dons/tests/pcre-light/hpc_index.html>\n";
      buildType = "Configure";
    };
    components = {
      "library" = {
        depends = if flags.small_base
          then [
            (hsPkgs."base" or (errorHandler.buildDepError "base"))
            (hsPkgs."bytestring" or (errorHandler.buildDepError "bytestring"))
          ]
          else [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        libs = [ (pkgs."pcre" or (errorHandler.sysDepError "pcre")) ];
        buildable = true;
      };
    };
  }