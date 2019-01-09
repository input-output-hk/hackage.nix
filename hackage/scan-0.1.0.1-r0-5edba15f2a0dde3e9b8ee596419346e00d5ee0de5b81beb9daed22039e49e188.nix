{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "scan"; version = "0.1.0.1"; };
      license = "BSD-3-Clause";
      copyright = "Christian Maeder 2010";
      maintainer = "chr.maeder@web.de";
      author = "chr.maeder@web.de";
      homepage = "http://projects.haskell.org/style-scanner";
      url = "";
      synopsis = "lexical style suggestions for source code";
      description = "scan checks the format of your haskell source code regarding:\ncomments, white spaces and line breaks.";
      buildType = "Simple";
      };
    components = {
      exes = { "scan" = { depends = [ (hsPkgs.base) (hsPkgs.parsec) ]; }; };
      };
    }