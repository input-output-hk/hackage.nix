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
      specVersion = "1.8";
      identifier = {
        name = "project-template";
        version = "0.2.0.1";
      };
      license = "BSD-3-Clause";
      copyright = "";
      maintainer = "michael@fpcomplete.com";
      author = "Michael Snoyman";
      homepage = "https://github.com/fpco/haskell-ide";
      url = "";
      synopsis = "Specify Haskell project templates and generate files";
      description = "See initial blog post for explanation: <http://www.yesodweb.com/blog/2012/09/project-templates>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.base64-bytestring)
          (hsPkgs.text)
          (hsPkgs.bytestring)
          (hsPkgs.transformers)
          (hsPkgs.mtl)
          (hsPkgs.conduit)
          (hsPkgs.conduit-extra)
          (hsPkgs.resourcet)
          (hsPkgs.containers)
          (hsPkgs.filepath)
          (hsPkgs.directory)
        ];
      };
      tests = {
        "test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.project-template)
            (hsPkgs.hspec)
            (hsPkgs.transformers)
            (hsPkgs.QuickCheck)
            (hsPkgs.base64-bytestring)
            (hsPkgs.conduit)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.containers)
            (hsPkgs.resourcet)
          ];
        };
      };
    };
  }