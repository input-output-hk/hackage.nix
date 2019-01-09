{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = { name = "pcre-light-extra"; version = "0.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "steffen <dot> siering <at> gmail com";
      author = "Steffen Siering";
      homepage = "http://github.com/urso/pcre-light-extra";
      url = "";
      synopsis = "pcre-light extra functionality";
      description = "pcre-light utility functions for more user friendly usage.\nInstead of adding execution and compile options to the matching and\ncompiling functions, the options are added to the regular expression to be\ncompiled or run. Furthermore support for different matching return types\n(using typeclass 'MatchResult') and different regular expression types\n(compiled or uncompiled using typeclass 'RegexLike') are supported. See module\ndocumentation for examples.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.bytestring) (hsPkgs.pcre-light) ];
        };
      };
    }