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
        version = "0.3.0.4";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "d.bushenko@gmail.com";
      author = "dbushenko";
      homepage = "http://github.com/dbushenko/trurl";
      url = "";
      synopsis = "Haskell template code generator";
      description = "Trurl is a haskell project and code generating utility. Use it for scaffolding your projects and entities.\nQuick start:\n\ncabal update\n\ncabal install trurl\n\ntrurl create MyProject scotty-mysql\n\nTrurl allows creating your own templates for projects as well as for files.";
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
          (hsPkgs.filemanip)
          (hsPkgs.safe)
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