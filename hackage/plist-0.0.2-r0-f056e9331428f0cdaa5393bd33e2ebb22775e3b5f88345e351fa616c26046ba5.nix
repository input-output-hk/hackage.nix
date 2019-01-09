{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "plist"; version = "0.0.2"; };
      license = "BSD-3-Clause";
      copyright = "(c) 2009, Yuras Shumovich";
      maintainer = "shumovichy@gmail.com";
      author = "Yuras Shumovich<shumovichy@gmail.com>";
      homepage = "";
      url = "";
      synopsis = "Generate and parse Mac OX property list format";
      description = "Simple helper to generate and parse Mac OS X plist format.\nCurrently it supports only 'xml1' format.\nIt is based on Haskell XML Toolbox.\n\nSee\n<http://developer.apple.com/mac/library/documentation/Darwin/Reference/ManPages/man5/plist.5.html>\nfor details about plist format.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.dataenc) (hsPkgs.hxt) ];
        };
      };
    }