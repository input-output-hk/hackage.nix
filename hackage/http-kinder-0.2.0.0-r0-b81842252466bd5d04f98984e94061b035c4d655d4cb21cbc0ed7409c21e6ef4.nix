{ system, compiler, flags, pkgs, hsPkgs, pkgconfPkgs, ... }:
  {
    flags = {};
    package = {
      specVersion = "1.10";
      identifier = { name = "http-kinder"; version = "0.2.0.0"; };
      license = "BSD-3-Clause";
      copyright = "2015 Joseph Abrahamson";
      maintainer = "me@jspha.com";
      author = "Joseph Abrahamson <me@jspha.com>";
      homepage = "http://github.com/tel/serv#readme";
      url = "";
      synopsis = "Generic kinds and types for working with HTTP";
      description = "Types and kinds for describing HTTP requests and responsts.\n\nSee the README for more details.";
      buildType = "Simple";
      };
    components = {
      "library" = {
        depends = [
          (hsPkgs.base)
          (hsPkgs.aeson)
          (hsPkgs.bytestring)
          (hsPkgs.case-insensitive)
          (hsPkgs.containers)
          (hsPkgs.http-media)
          (hsPkgs.http-types)
          (hsPkgs.singletons)
          (hsPkgs.text)
          (hsPkgs.time)
          ];
        };
      tests = {
        "http-kinder-test" = {
          depends = [
            (hsPkgs.base)
            (hsPkgs.http-kinder)
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