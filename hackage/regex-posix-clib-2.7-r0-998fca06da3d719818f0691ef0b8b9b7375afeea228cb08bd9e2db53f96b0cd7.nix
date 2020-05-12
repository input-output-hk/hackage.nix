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
      specVersion = "1.12";
      identifier = { name = "regex-posix-clib"; version = "2.7"; };
      license = "LGPL-2.1-only";
      copyright = "";
      maintainer = "hvr@gnu.org";
      author = "";
      homepage = "";
      url = "";
      synopsis = "\"Regex for Windows\" C library";
      description = "This CABAL package provides the <http://gnuwin32.sourceforge.net/packages/regex.htm Regex for Windows> C library for convenience on operating systems lacking a <https://pubs.opengroup.org/onlinepubs/9699919799/basedefs/regex.h.html POSIX.2 regex> implementation.";
      buildType = "Simple";
      };
    components = { "library" = { buildable = true; }; };
    }