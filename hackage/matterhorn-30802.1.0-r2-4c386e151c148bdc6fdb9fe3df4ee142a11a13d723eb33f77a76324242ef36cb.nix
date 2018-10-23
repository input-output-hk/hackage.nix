{ system
, compiler
, flags
, pkgs
, hsPkgs
, pkgconfPkgs }:
  {
    flags = {};
    package = {
      specVersion = "1.12";
      identifier = {
        name = "matterhorn";
        version = "30802.1.0";
      };
      license = "BSD-3-Clause";
      copyright = "©2016-2017 AUTHORS.txt";
      maintainer = "matterhorn@galois.com";
      author = "matterhorn@galois.com";
      homepage = "";
      url = "";
      synopsis = "Terminal client for the MatterMost chat system";
      description = "This is a terminal client for the MatterMost chat\nsystem. Please see the README for a list of\nfeatures and information on getting started.";
      buildType = "Simple";
    };
    components = {
      exes = {
        "matterhorn" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.mattermost-api)
            (hsPkgs.base-compat)
            (hsPkgs.unordered-containers)
            (hsPkgs.containers)
            (hsPkgs.connection)
            (hsPkgs.text)
            (hsPkgs.bytestring)
            (hsPkgs.stm)
            (hsPkgs.config-ini)
            (hsPkgs.process)
            (hsPkgs.microlens-platform)
            (hsPkgs.brick)
            (hsPkgs.vty)
            (hsPkgs.transformers)
            (hsPkgs.text-zipper)
            (hsPkgs.time)
            (hsPkgs.xdg-basedir)
            (hsPkgs.filepath)
            (hsPkgs.directory)
            (hsPkgs.vector)
            (hsPkgs.strict)
            (hsPkgs.hashable)
            (hsPkgs.cheapskate)
            (hsPkgs.utf8-string)
            (hsPkgs.temporary)
            (hsPkgs.gitrev)
            (hsPkgs.Hclip)
            (hsPkgs.mtl)
          ];
        };
      };
      tests = {
        "test_messages" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.base-compat)
            (hsPkgs.brick)
            (hsPkgs.bytestring)
            (hsPkgs.cheapskate)
            (hsPkgs.checkers)
            (hsPkgs.config-ini)
            (hsPkgs.connection)
            (hsPkgs.containers)
            (hsPkgs.directory)
            (hsPkgs.filepath)
            (hsPkgs.hashable)
            (hsPkgs.Hclip)
            (hsPkgs.mattermost-api)
            (hsPkgs.mattermost-api-qc)
            (hsPkgs.microlens-platform)
            (hsPkgs.mtl)
            (hsPkgs.process)
            (hsPkgs.quickcheck-text)
            (hsPkgs.stm)
            (hsPkgs.strict)
            (hsPkgs.string-conversions)
            (hsPkgs.tasty)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.text-zipper)
            (hsPkgs.time)
            (hsPkgs.transformers)
            (hsPkgs.Unique)
            (hsPkgs.unordered-containers)
            (hsPkgs.vector)
            (hsPkgs.vty)
            (hsPkgs.xdg-basedir)
          ];
        };
      };
    };
  }