{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs
, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "key-state";
        version = "0.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "Joe Vargas";
      author = "";
      homepage = "https://github.com/jxv/key-state#readme";
      url = "";
      synopsis = "Manage key and button states and statuses";
      description = "Manage key and button states and statuses";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
      tests = {
        "key-state-tests" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.key-state)
            (hsPkgs.hspec)
          ];
        };
      };
    };
  }