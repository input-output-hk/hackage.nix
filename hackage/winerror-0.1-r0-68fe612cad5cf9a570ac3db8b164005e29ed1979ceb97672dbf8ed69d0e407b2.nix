{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.2";
      identifier = {
        name = "winerror";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "2008 Felix Martini";
      maintainer = "fmartini@gmail.com";
      author = "";
      homepage = "";
      url = "";
      synopsis = "Error handling for foreign calls to the Windows API.";
      description = "";
      buildType = "Simple";
    };
    components = {
      "winerror" = {
        depends  = pkgs.lib.optional (system.isWindows) (hsPkgs.base);
      };
    };
  }