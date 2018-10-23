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
        name = "serv-wai";
        version = "0.2.0.0";
      };
      license = "BSD-3-Clause";
      copyright = "2015 Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson <me@jspha.com>";
      homepage = "http://github.com/tel/serv#readme";
      url = "";
      synopsis = "Dependently typed API servers with Serv";
      description = "Implement \"Network.Wai\" style servers matching \"Serv.Api\" style API\ndescriptions.\n\nThis package offers tools for building lightweight API servers to match APIs\ndescribed using the types from \"Serv.Api\". You implement endpoints matching\nthe API types in whatever monad you desire (providing a \"run\" function to\n@IO@) and the server is automatically generated from there.\n\nSee the README for more details.";
      buildType = "Simple";
    };
    components = {
      "serv-wai" = {
        depends  = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-kinder)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.mmorph)
          (hsPkgs.mtl)
          (hsPkgs.serv)
          (hsPkgs.singletons)
          (hsPkgs.tagged)
          (hsPkgs.text)
          (hsPkgs.time)
          (hsPkgs.transformers)
          (hsPkgs.vinyl)
          (hsPkgs.wai)
        ];
      };
      tests = {
        "serv-wai-test" = {
          depends  = [
            (hsPkgs.base)
            (hsPkgs.serv)
            (hsPkgs.serv-wai)
            (hsPkgs.HUnit)
            (hsPkgs.QuickCheck)
            (hsPkgs.tasty)
            (hsPkgs.tasty-ant-xml)
            (hsPkgs.tasty-hunit)
            (hsPkgs.tasty-quickcheck)
            (hsPkgs.text)
            (hsPkgs.wai)
            (hsPkgs.wai-extra)
          ];
        };
      };
    };
  }