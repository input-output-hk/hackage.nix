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
      specVersion = "1.0";
      identifier = { name = "HsPerl5"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "2008 Audrey Tang";
      maintainer = "Audrey Tang <audreyt@audreyt.org>";
      author = "Audrey Tang <audreyt@audreyt.org>";
      homepage = "";
      url = "";
      synopsis = "Haskell interface to embedded Perl 5 interpreter";
      description = "This module provides a Haskell interface to embedded Perl 5 interpreter.\nDocumentation and functionality is scarce at the moment; see test.hs for\nsome basic usage examples.\nEventually the entirety of Pugs.Embed.Perl5 and Pugs.Run.Perl5 will be\ncarried into this module.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs."base" or (errorHandler.buildDepError "base")) ];
        buildable = true;
      };
    };
  }