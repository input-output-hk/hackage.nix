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
        name = "grakn";
        version = "0.2.0";
      };
      license = "Apache-2.0";
      copyright = "";
      maintainer = "community@grakn.ai";
      author = "Grakn Labs";
      homepage = "https://github.com/graknlabs/grakn-haskell";
      url = "";
      synopsis = "A Haskell client for <http://grakn.ai Grakn>";
      description = "A Haskell client for <http://grakn.ai Grakn>";
      buildType = "Simple";
    };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.containers)
          (hsPkgs.process)
          (hsPkgs.aeson)
          (hsPkgs.scientific)
          (hsPkgs.text)
          (hsPkgs.regex-posix)
          (hsPkgs.servant)
          (hsPkgs.servant-client)
          (hsPkgs.http-client)
          (hsPkgs.mtl)
          (hsPkgs.http-media)
        ];
      };
      tests = {
        "test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.grakn)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.regex-posix)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.http-client)
            (hsPkgs.mtl)
            (hsPkgs.http-media)
            (hsPkgs.hspec)
            (hsPkgs.QuickCheck)
            (hsPkgs.markdown-unlit)
            (hsPkgs.MissingH)
          ];
        };
        "accept" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.grakn)
            (hsPkgs.containers)
            (hsPkgs.process)
            (hsPkgs.aeson)
            (hsPkgs.scientific)
            (hsPkgs.text)
            (hsPkgs.regex-posix)
            (hsPkgs.servant)
            (hsPkgs.servant-client)
            (hsPkgs.http-client)
            (hsPkgs.mtl)
            (hsPkgs.http-media)
            (hsPkgs.hspec)
            (hsPkgs.markdown-unlit)
            (hsPkgs.MissingH)
          ];
        };
      };
    };
  }