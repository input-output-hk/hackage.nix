{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "0";
      identifier = {
        name = "libxml";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2006, Lemmih";
      maintainer = "Lemmih (lemmih@gmail.com)";
      author = "Lemmih (lemmih@gmail.com)";
      homepage = "";
      url = "";
      synopsis = "Binding to libxml2";
      description = "Minimal binding to libxml2. Additional functions will be added when needed.";
      buildType = "Custom";
    };
    components = {
      "libxml" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.mtl)
        ];
        libs = [ (pkgs."xml2") ];
      };
    };
  }