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
      specVersion = "1.2";
      identifier = {
        name = "unicode-prelude";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "(c) 2008 by Peter Divianszky";
      maintainer = "Peter Divianszky <divip@aszt.inf.elte.hu>";
      author = "Peter Divianszky <divip@aszt.inf.elte.hu>";
      homepage = "";
      url = "";
      synopsis = "Unicode notation for some definitions in Prelude";
      description = "This package adds unicode notation for some definitions in Prelude.";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [ (hsPkgs.base) ];
      };
    };
  }