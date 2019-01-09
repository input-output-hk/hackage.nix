{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = { name = "haxr-th"; version = "3000.0.0"; };
      license = "BSD-4-Clause";
      copyright = "Bjorn Bringert, 2003-2006";
      maintainer = "Bjorn Bringert <bjorn@bringert.net>";
      author = "Bjorn Bringert <bjorn@bringert.net>";
      homepage = "http://www.haskell.org/haxr/";
      url = "";
      synopsis = "Automatic deriving of XML-RPC structs for Haskell records.";
      description = "HaXR is a library for writing XML-RPC\nclient and server applications in Haskell.\nThis package adds automatic deriving of\nXML-RPC structs for Haskell records,\nusing Template Haskell.";
      buildType = "Custom";
      };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) (hsPkgs.haxr) (hsPkgs.template-haskell) ];
        };
      };
    }