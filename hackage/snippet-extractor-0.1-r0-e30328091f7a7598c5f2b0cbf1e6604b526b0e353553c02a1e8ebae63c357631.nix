{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.6";
      identifier = { name = "snippet-extractor"; version = "0.1"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "dagitj@gmail.com";
      author = "Jason Dagit";
      homepage = "";
      url = "";
      synopsis = "Extracts labeled snippets of code to files.";
      description = "";
      buildType = "Simple";
      };
    components = {
      exes = {
        "snippet-extractor" = { depends = [ (hsPkgs.base) (hsPkgs.parsec) ]; };
        };
      };
    }