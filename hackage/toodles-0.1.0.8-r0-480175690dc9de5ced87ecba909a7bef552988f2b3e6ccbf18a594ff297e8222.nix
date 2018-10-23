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
        name = "toodles";
        version = "0.1.0.8";
      };
      license = "MIT";
      copyright = "2018 Avi Press";
      maintainer = "mail@avi.press";
      author = "Avi Press";
      homepage = "https://github.com/aviaviavi/toodles#readme";
      url = "";
      synopsis = "Manage the TODO entries in your code";
      description = "\"Toodles scrapes your entire repository for TODO entries and organizes them so you can manage your project directly from the code. View, filter, sort, and edit your TODO's with an easy to use web application. When you make changes via toodles, the edits will be applied directly the TODO entries in your code. When you're done, commit and push your changes to share them with your team!\"";
      buildType = "Simple";
    };
    components = {
      exes = {
        "toodles" = {
          depends  = [
            (hsPkgs.MissingH)
            (hsPkgs.aeson)
            (hsPkgs.base)
            (hsPkgs.blaze-html)
            (hsPkgs.bytestring)
            (hsPkgs.cmdargs)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.http-types)
            (hsPkgs.megaparsec)
            (hsPkgs.regex-posix)
            (hsPkgs.servant)
            (hsPkgs.servant-blaze)
            (hsPkgs.servant-server)
            (hsPkgs.strict)
            (hsPkgs.text)
            (hsPkgs.transformers)
            (hsPkgs.wai)
            (hsPkgs.warp)
            (hsPkgs.yaml)
          ];
        };
      };
    };
  }