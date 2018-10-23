{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = {
        name = "trurl";
        version = "0.4.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "d.bushenko@gmail.com";
      author = "dbushenko";
      homepage = "http://github.com/dbushenko/trurl";
      url = "";
      synopsis = "Haskell template code generator";
      description = "Trurl is a haskell project and code generating utility. Use it for scaffolding your projects and entities.\nQuick start:\n\ntrurl new project MyProject haskeleton\n\nTrurl allows creating your own templates for projects as well as for files.";
      buildType = "Simple";
    };
    components = {
      "trurl" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.http-conduit)
          (hsPkgs.directory)
          (hsPkgs.bytestring)
          (hsPkgs.text)
          (hsPkgs.tar)
          (hsPkgs.hastache)
          (hsPkgs.aeson)
          (hsPkgs.hastache-aeson)
          (hsPkgs.unordered-containers)
          (hsPkgs.MissingH)
          (hsPkgs.filemanip)
          (hsPkgs.safe)
          (hsPkgs.filepath)
          (hsPkgs.split)
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