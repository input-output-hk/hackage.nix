{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "trurl"; version = "0.3.0.0"; };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "d.bushenko@gmail.com";
      author = "dbushenko";
      homepage = "http://github.com/dbushenko/trurl";
      url = "";
      synopsis = "Haskell template code generator";
      description = "Trurl is a haskell project and code generating utility. Use it for scaffolding your projects and entities.\n\nQuick start:\n\ncabal update\ncabal install trurl\ntrurl create MyProject scotty-mysql\ncd MyProject/src\ntrurl new Comment scotty-entity 'props:[comment#String, author#String!]'\n\nTrurl allows creating your own templates for projects as well as for files. Just put them to ~/.trurl/repo.\n\nFor more details read here http://github.com/dbushenko/trurl";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
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
      exes = { "trurl" = { depends = [ (hsPkgs.base) (hsPkgs.trurl) ]; }; };
      tests = {
        "tests" = {
          depends = [
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