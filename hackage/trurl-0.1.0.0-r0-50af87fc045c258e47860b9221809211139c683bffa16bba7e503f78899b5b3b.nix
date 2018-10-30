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
        name = "trurl";
        version = "0.1.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "d.bushenko@gmail.com";
      author = "dbushenko";
      homepage = "http://github.com/dbushenko/trurl";
      url = "";
      synopsis = "Haskell template code generator";
      description = "";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.tar)
          (hsPkgs.hastache)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.unordered-containers)
          (hsPkgs.MissingH)
        ];
      };
      exes = {
        "trurl" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.trurl)
          ];
        };
      };
      tests = {
        "tests" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.hastache)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.trurl)
          ];
        };
      };
    };
  }