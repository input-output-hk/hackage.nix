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
        name = "carboncopy";
        version = "0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "jdevelop@gmail.com";
      author = "Eugene Dzhurinsky";
      homepage = "http://github.com/jdevelop/carboncopy";
      url = "";
      synopsis = "Drop emails from threads being watched into special CC folder.";
      description = "See README.txt";
      buildType = "Simple";
    };
    components = {
      exes = {
        "carboncopy" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.IfElse)
            (hsPkgs.bytestring)
            (hsPkgs.filepath)
            (hsPkgs.MissingH)
            (hsPkgs.haskell98)
          ];
        };
      };
    };
  }